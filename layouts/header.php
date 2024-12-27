<?php
$userdata = $_SESSION['userdata'];
$profile = $userdata['profile'];
?>
<div class="header border-bottom">
     <div class="header-content">
          <nav class="navbar navbar-expand">
               <div class="collapse navbar-collapse justify-content-between">
                    <div class="header-left">
                         <div class="dashboard_bar">
                              Dashboard
                         </div>
                    </div>
                    <ul class="navbar-nav header-right">
                         <li class="nav-item dropdown notification_dropdown">
                              <a class="nav-link" href="javascript:void(0);" role="button" data-bs-toggle="dropdown">
                                   <svg width="28" height="28" viewbox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M23.3333 19.8333H23.1187C23.2568 19.4597 23.3295 19.065 23.3333 18.6666V12.8333C23.3294 10.7663 22.6402 8.75902 21.3735 7.12565C20.1068 5.49228 18.3343 4.32508 16.3333 3.80679V3.49996C16.3333 2.88112 16.0875 2.28763 15.6499 1.85004C15.2123 1.41246 14.6188 1.16663 14 1.16663C13.3812 1.16663 12.7877 1.41246 12.3501 1.85004C11.9125 2.28763 11.6667 2.88112 11.6667 3.49996V3.80679C9.66574 4.32508 7.89317 5.49228 6.6265 7.12565C5.35983 8.75902 4.67058 10.7663 4.66667 12.8333V18.6666C4.67053 19.065 4.74316 19.4597 4.88133 19.8333H4.66667C4.35725 19.8333 4.0605 19.9562 3.84171 20.175C3.62292 20.3938 3.5 20.6905 3.5 21C3.5 21.3094 3.62292 21.6061 3.84171 21.8249C4.0605 22.0437 4.35725 22.1666 4.66667 22.1666H23.3333C23.6428 22.1666 23.9395 22.0437 24.1583 21.8249C24.3771 21.6061 24.5 21.3094 24.5 21C24.5 20.6905 24.3771 20.3938 24.1583 20.175C23.9395 19.9562 23.6428 19.8333 23.3333 19.8333Z" fill="#717579"></path>
                                        <path d="M9.9819 24.5C10.3863 25.2088 10.971 25.7981 11.6766 26.2079C12.3823 26.6178 13.1838 26.8337 13.9999 26.8337C14.816 26.8337 15.6175 26.6178 16.3232 26.2079C17.0288 25.7981 17.6135 25.2088 18.0179 24.5H9.9819Z" fill="#717579"></path>
                                   </svg>
                                   <span class="badge light text-white bg-success rounded-circle">1</span>
                              </a>
                              <div class="dropdown-menu dropdown-menu-end">
                                   <div id="DZ_W_Notification1" class="widget-media dlab-scroll p-3" style="height: max-content;">
                                        <ul class="timeline">
                                             <li>
                                                  <div class="timeline-panel">
                                                       <div class="media media-success me-2">
                                                            <i class="fa fa-check"></i>
                                                       </div>
                                                       <div class="media-body">
                                                            <h6 class="mb-1">Your account successfully activateed</h6>
                                                            <small class="d-block">27 December 2023</small>
                                                       </div>
                                                  </div>
                                             </li>
                                        </ul>
                                   </div>
                                   <a class="all-notification" href="javascript:void(0);">Close<i class="ti-arrow-end"></i></a>
                              </div>
                         </li>


                         <li class="nav-item dropdown header-profile">
                              <a class="nav-link" href="javascript:void(0);" role="button" data-bs-toggle="dropdown">
                                   <img src="../assets/profiles/<?= $profile ?>" alt="<?= $profile ?>" class="square-img">
                              </a>
                              <div class="dropdown-menu dropdown-menu-end">
                                   <a href="../user/profile.php" class="dropdown-item ai-icon">
                                        <svg id="icon-user1" xmlns="http://www.w3.org/2000/svg" class="text-primary" width="18" height="18" viewbox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                             <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                             <circle cx="12" cy="7" r="4"></circle>
                                        </svg>
                                        <span class="ms-2">Profile </span>
                                   </a>
                                   <button class="dropdown-item ai-icon" data-bs-toggle="modal" data-bs-target=".bd-logout-modal-sm">
                                        <svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger" width="18" height="18" viewbox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                             <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                                             <polyline points="16 17 21 12 16 7"></polyline>
                                             <line x1="21" y1="12" x2="9" y2="12"></line>
                                        </svg>
                                        <span class="ms-2">Logout </span>
                                   </button>
                              </div>

                         </li>
                    </ul>
               </div>
          </nav>
     </div>
</div>

<div class="modal fade bd-logout-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
     <div class="modal-dialog modal-sm">
          <div class="modal-content">
               <div class="modal-body text-center">
                    <p class="fw-bold text-white mb-5 fs-5">Are you sure to logout?</p>
                    <button type="button" class="btn btn-dark light me-2" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-danger button-logout">Logout</button>
               </div>
          </div>
     </div>
</div>