function parseQueryString(queryString) {
    let params = {};
    let keyValuePairs = queryString.split('&');
    for (let pair of keyValuePairs) {
        let [key, value] = pair.split('=');
        params[key] = decodeURIComponent(value.replace(/\+/g, ' '));
    }

    return params;
}

function isAlphaNum(username) {
    var regex = /^[a-zA-Z0-9]+$/;
    if (regex.test(username)) {
        return true;
    } else {
        return false;
    }
}

(function ($) {

    $('.profile-input').change(function () {
        previewImage(this);
    });

    function previewImage(input) {
        var preview = $('.mdl.profile-photo img')[0];
        var file = input.files[0];
        if (file) {
            var reader = new FileReader();
            reader.onload = function (e) {
                preview.src = e.target.result;
            };
            reader.readAsDataURL(file);
        }
    }

    /* "use strict" */

    function onceAppend(cls, text) {
        if (!$(cls).text().includes(text)) {
            $(cls).append(text);
        }
    }

    $('.button-logout').on('click', function () {
        $.ajax({
            method: "POST",
            url: '../auth/logoutPost.php',
            success: function () {
                window.location.href = "../login.php";
            }
        })
    })

    $('.card-cs-panel').on('click', function (e) {
        e.preventDefault();

        var id = $(this).attr('cs-id');
        $.ajax({
            url: '../user/cs/csGetData.php',
            type: 'POST',
            method: 'POST',
            data: { id: id },
            success: function (res) {
                res = JSON.parse(res);
                $(`.csp-val1`).text(res.name);
                $(`.csp-val2`).text(res.level);
                $(`.csp-val3`).text(res.warn);
                $(`.csp-val4`).text(res.link);
                $(`.csp-val4`).attr('href', res.link);

                $('.cs-approve').attr('cs-id', id);
                $('.cs-revoke').attr('cs-id', id);

                $(`.csp-val5`).empty();
                var dets = res.detail.split('\n');
                for (let i = 0; i < dets.length; i++) {
                    $(`.csp-val5`).append(`<p class="mb-0 mt-0 fs-08">${dets[i]}</p>`);
                }

                $('#csviewmodal').modal('show');
            }
        })
    })

    $(".cs-revoke").on('click', function () {
        swal({
            title: 'Revoke Reason',
            text: 'Please enter revoke reason.',
            confirmButtonText: "Revoke",
            input: 'text',
            showCancelButton: true,
            inputValidator: (value) => {
                if (!value) {
                    return 'Please enter revoke reason.'
                }
                var id = $('.cs-revoke').attr('cs-id');
                $.ajax({
                    url: `../user/cs/csRevoke.php`,
                    type: 'POST',
                    method: 'POST',
                    data: { id, reason: value },
                    success: function () {
                        setTimeout(function () {
                            swal({
                                title: "Success",
                                text: "Your character story has been revoked.",
                                type: "success",
                                confirmButtonText: "Okay"
                            });
                        }, 500)

                        setTimeout(() => {
                            location.reload();
                        }, 2000)
                    }
                })
            }
        })
    })

    $('.cs-approve').on('click', function () {
        swal({
            title: "Approve Character Story?",
            text: "Confirm  if you want to Approve Character Story!",
            showCancelButton: true,
            confirmButtonText: "Approve"
        }).then((result) => {
            if (result.value) {

                var id = $('.cs-approve').attr('cs-id');
                $.ajax({
                    url: `../user/cs/csApprove.php`,
                    type: 'POST',
                    method: 'POST',
                    data: { id },
                    success: function () {
                        swal({
                            title: "Success",
                            text: "Your character story data successfully submited.",
                            type: "success",
                            confirmButtonText: "Okay"
                        });
                        setTimeout(function () {
                            location.reload();
                        }, 1500)
                    }
                })
            }
        });
    })


    $('.submit-cs').on('click', function (e) {
        e.preventDefault();

        var character = $('.cs-character').val();
        var link = $('.cs-link').val();
        var detail = $('.cs-detail').val();
        var level = $('.cs-character option:selected').attr('level')
        var warn = $('.cs-character option:selected').attr('warn')

        if (character === '-1')
            return onceAppend('.cs-input-char .text-danger', ' Select character below!')

        if (!link)
            return onceAppend('.cs-input-link .text-danger', ' Pastebin link are required!')

        if (!detail)
            return onceAppend('.cs-input-detail .textdanger', ' Details are required!')

        if (!link.includes('https://pastebin.com/'))
            return swal({ title: 'Incorrect Link', text: 'Please enter a valid PasteBin link.', type: 'error' })

        swal({
            title: "Submit Character Story?",
            text: "Confirm if you want to submit Character Story!",
            showCancelButton: true,
            confirmButtonText: "Confirm"
        }).then((result) => {
            if (result.value) {
                $(this).prop('disabled', true);
                $(this).addClass('btn-loading');
                $.ajax({
                    url: '../user/cs/csDelete.php',
                    type: 'post',
                    data: { id: $('.submit-cs').attr('cs-id') },
                    success: function () {
                        $.ajax({
                            url: '../user/cs/csCreate.php',
                            type: 'POST',
                            data: { name: character, link, detail, level, warn },
                            success: function (res) {
                                $('.submit-cs').prop('disabled', false);
                                $('.submit-cs').removeClass('btn-loading');
                                if (res === "queue_full") {
                                    swal({ title: 'Failed', text: 'Character Story queue is Full.', type: 'error' })
                                } else if (res === "success") {
                                    swal({
                                        title: "Success",
                                        text: "Your character story data successfully submited.",
                                        type: "success"
                                    });
                                    setTimeout(function () {
                                        location.reload();
                                    }, 1500)
                                }
                            }
                        })
                    }
                })
            }
        });
    })

    $('.btn-change-mod').on('click', function () {
        var targetModal = $(this).attr('mod-target');
        $(this).closest('.modal').modal('hide');
        setTimeout(() => {
            $(targetModal).modal('show');
        }, 200)
    });

    $('#changepassform').on('submit', function (e) {
        function cal(calid, msg) {
            $(`.cal-${calid}`).empty();
            $(`.cal-${calid}`).text(` * ${msg}`);
        }

        e.preventDefault();
        var data = $(this).serialize();
        var cd = parseQueryString(data);

        if (cd.newpass.length < 8)
            return cal('2', "Password is too short.");

        if (cd.newpass.length > 23)
            return cal('2', "Password is too long.");

        $('#changepassform .sbm').prop('disabled', true);
        $('#changepassform .sbm').addClass('btn-loading');
        $.ajax({
            url: '../user/changePass.php',
            type: 'POST',
            method: 'POST',
            data: data,
            success: function (res) {
                $('#changepassform .sbm').prop('disabled', false);
                $('#changepassform .sbm').removeClass('btn-loading')
                if (res === 'password_changed') {
                    $('#changepassmodal').modal('hide');
                    swal("Password Changed!", "Your account password successfully changed!", "success");
                    setTimeout(() => {
                        location.reload();
                    }, 2000);
                } else if (res === 'repeat_error') {
                    swal("New Password Error", "Repeated new password does not match!", "error");
                } else if (res === 'current_error') {
                    swal("Invaliid Password", "The current password does not match!", "error");
                }
            }
        })
    })

    $('#cmodChar').on('submit', function (e) {
        e.preventDefault();
        var data = $('#cmodChar').serialize();
        var cd = parseQueryString(data);

        if (!isAlphaNum(cd.fn) || !isAlphaNum(cd.ln))
            return swal("Invalid Name", "The character name must not contain symbols or numbers.", "info");

        $('#cmodChar .sbm').prop('disabled', true);
        $('#cmodChar .sbm').addClass('btn-loading')
        $.ajax({
            url: '../user/createChar.php',
            type: 'POST',
            method: 'POST',
            data: data,
            success: function (res) {
                $('#cmodChar .sbm').prop('disabled', false);
                $('#cmodChar .sbm').removeClass('btn-loading')
                if (res.includes('name_already_use')) {
                    swal("Invalid Name", "The character name already taken.", "info");
                } else if (res.includes('succes')) {
                    $('#createCharModal').modal('hide');
                    swal("Success!", "You have successfully created new Character!", "success");
                    setTimeout(() => {
                        location.reload();
                    }, 2000);
                }
            }
        })
    })

    $('#delcharform').on('submit', function (e) {
        e.preventDefault();

        var name = $('.renname').val();
        var cname = $(this).attr('data-cname');

        if (name !== cname) {
            swal('Deletion Failed', 'The specified character name does not Match!', 'error');
        } else {
            $('#delcharform sbm').prop('disabled', true);
            $('#delcharform sbm').addClass('btn-loading-dgr');
            $.ajax({
                url: '../user/deleteChar.php',
                type: 'POST',
                data: { name: name },
                success: function (res) {
                    $('#delcharform sbm').prop('disabled', false);
                    $('#delcharform sbm').removeClass('btn-loading-dgr');
                    $('#delcharmodal').modal('hide');
                    swal("Deletion Success", `Character ${name} has been deleted.`, "success");
                    setTimeout(() => {
                        window.location.href = 'home.php';
                    }, 1500);
                }
            })
        }
    })

    $('#renumberverify').on('submit', function (e) {
        e.preventDefault();
        var data = $(this).serialize();

        $('#renumberverify .sbm').prop('disabled', true);
        $('#renumberverify .sbm').addClass('btn-loading');
        $.ajax({
            url: '../user/numberSend.php',
            type: 'POST',
            method: 'POST',
            data: data,
            success: function (res) {
                $('#renumberverify .sbm').prop('disabled', false);
                $('#renumberverify .sbm').removeClass('btn-loading');
                if (res.includes('already')) {
                    return swal("Verify Failed", "The whatsapp number already taken with other account!", "error");
                } else if (res.includes('success')) {
                    $('#phoneresendmodal').modal('hide');
                    return swal("Verify Success", "The verification link successfully sent!", "success");
                }
                return swal("Verify Failed", "We have an error while verifying!", "error");
            }
        })
    })

    $('#numberverify').on('submit', function (e) {
        e.preventDefault();
        var data = $('#numberverify').serialize();
        $('#numberverify .sbm').prop('disabled', true);
        $('#numberverify .sbm').addClass('btn-loading');
        $.ajax({
            url: '../user/numberSend.php',
            type: 'POST',
            method: 'POST',
            data: data,
            success: function (res) {
                $('#numberverify .sbm').prop('disabled', false);
                $('#numberverify .sbm').removeClass('btn-loading');
                if (res.includes('already')) {
                    return swal("Verify Failed", "The whatsapp number already use with other account!", "error");
                } else if (res.includes('success')) {
                    $('#phonesetmodal').modal('hide');
                    return swal("Verify Success", "The verification link successfully sent!", "success");
                }
                return swal("Verify Failed", "We have an error while verifying!", "error");
            }
        })
    })

    var dlabChartlist = function () {
        var donutChart1 = function () {
            $("span.donut1").peity("donut", {
                width: "70",
                height: "70"
            });
        }


        var NewCustomers = function () {
            var options = {
                series: [{
                    name: 'Registered Statistic',
                    data: [50, 40, 25, 60, 80],
                },],
                chart: {
                    type: 'line',
                    height: 50,
                    width: 100,
                    toolbar: {
                        show: false,
                    },
                    zoom: {
                        enabled: false
                    },
                    sparkline: {
                        enabled: true
                    }

                },

                colors: ['var(--primary)'],
                dataLabels: {
                    enabled: false,
                },

                legend: {
                    show: false,
                },
                stroke: {
                    show: true,
                    width: 6,
                    curve: 'smooth',
                    colors: ['var(--primary)'],
                },

                grid: {
                    show: false,
                    borderColor: '#eee',
                    padding: {
                        top: 0,
                        right: 0,
                        bottom: 0,
                        left: 0

                    }
                },
                states: {
                    normal: {
                        filter: {
                            type: 'none',
                            value: 0
                        }
                    },
                    hover: {
                        filter: {
                            type: 'none',
                            value: 0
                        }
                    },
                    active: {
                        allowMultipleDataPointsSelection: false,
                        filter: {
                            type: 'none',
                            value: 0
                        }
                    }
                },
                xaxis: {
                    categories: ['Jan', 'feb', 'Mar', 'Apr', 'May'],
                    axisBorder: {
                        show: false,
                    },
                    axisTicks: {
                        show: false
                    },
                    labels: {
                        show: false,
                        style: {
                            fontSize: '12px',
                        }
                    },
                    crosshairs: {
                        show: false,
                        position: 'front',
                        stroke: {
                            width: 1,
                            dashArray: 3
                        }
                    },
                    tooltip: {
                        enabled: true,
                        formatter: undefined,
                        offsetY: 0,
                        style: {
                            fontSize: '12px',
                        }
                    }
                },
                yaxis: {
                    show: false,
                },
                fill: {
                    opacity: 1,
                    colors: '#FC2E53'
                },
                tooltip: {
                    enabled: false,
                    style: {
                        fontSize: '12px',
                    },
                    y: {
                        formatter: function (val) {
                            return "$" + val + " thousands"
                        }
                    }
                }
            };

            var cbw = new ApexCharts(document.querySelector("#NewCustomers"), options);
            cbw.render();

        }
        var NewCustomers1 = function () {
            var options = {
                series: [{
                    name: 'Net Profit',
                    data: [100, 300, 200, 400, 100, 400],
                    /* radius: 30,	 */
                },],
                chart: {
                    type: 'line',
                    height: 50,
                    width: 80,
                    toolbar: {
                        show: false,
                    },
                    zoom: {
                        enabled: false
                    },
                    sparkline: {
                        enabled: true
                    }

                },

                colors: ['#0E8A74'],
                dataLabels: {
                    enabled: false,
                },

                legend: {
                    show: false,
                },
                stroke: {
                    show: true,
                    width: 6,
                    curve: 'smooth',
                    colors: ['var(--primary)'],
                },

                grid: {
                    show: false,
                    borderColor: '#eee',
                    padding: {
                        top: 0,
                        right: 0,
                        bottom: 0,
                        left: 0

                    }
                },
                states: {
                    normal: {
                        filter: {
                            type: 'none',
                            value: 0
                        }
                    },
                    hover: {
                        filter: {
                            type: 'none',
                            value: 0
                        }
                    },
                    active: {
                        allowMultipleDataPointsSelection: false,
                        filter: {
                            type: 'none',
                            value: 0
                        }
                    }
                },
                xaxis: {
                    categories: ['Jan', 'feb', 'Mar', 'Apr', 'May'],
                    axisBorder: {
                        show: false,
                    },
                    axisTicks: {
                        show: false
                    },
                    labels: {
                        show: false,
                        style: {
                            fontSize: '12px',
                        }
                    },
                    crosshairs: {
                        show: false,
                        position: 'front',
                        stroke: {
                            width: 1,
                            dashArray: 3
                        }
                    },
                    tooltip: {
                        enabled: true,
                        formatter: undefined,
                        offsetY: 0,
                        style: {
                            fontSize: '12px',
                        }
                    }
                },
                yaxis: {
                    show: false,
                },
                fill: {
                    opacity: 1,
                    colors: '#FB3E7A'
                },
                tooltip: {
                    enabled: false,
                    style: {
                        fontSize: '12px',
                    },
                    y: {
                        formatter: function (val) {
                            return "$" + val + " thousands"
                        }
                    }
                }
            };

            var chartBar1 = new ApexCharts(document.querySelector("#NewCustomers1"), options);
            chartBar1.render();
        }

        return {
            load: function () {
                donutChart1();
                NewCustomers();
                NewCustomers1();
            },
        }

    }();



    jQuery(window).on('load', function () {
        setTimeout(function () {
            dlabChartlist.load();
        }, 1000);

    });



})(jQuery);