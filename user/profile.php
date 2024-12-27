<?php
include '../layouts/top.php';
$userdata = $_SESSION['userdata'];
$created_at = isset($userdata['created_at']) ? $userdata['created_at'] : 00;
$userid = $_SESSION['userid'];

$username = $userdata['username'];
$email = $userdata['email'];
$password = $userdata['password'];
$salt = $userdata['salt'];
$profile = $userdata['profile'];
$number = $userdata['number'];

$nums = maskMiddleDigits($number);

?>
<div class="container-fluid">
     <!-- row -->
     <div class="row">
          <?php if (!$number) : ?>
               <div class="col-xl-12">
                    <div class="alert alert-primary notification">
                         <p class="notificaiton-title mb-2"><strong>Your account is not linked with Whatsapp Number!</strong></p>
                         <p>Please set up your Whatsapp Number below before login InGame!</p>
                         <?php if (isset($_SESSION['numverify'])) : ?>
                              <button class="btn btn-primary btn-sm" data-bs-target="#phonesetmodal" data-bs-toggle="modal">Link sent!</button>
                         <?php else : ?>
                              <button class="btn btn-primary btn-sm" data-bs-target="#phonesetmodal" data-bs-toggle="modal">Set Up</button>
                         <?php endif; ?>
                    </div>
               </div>
          <?php endif; ?>
          <div class="col-lg-12">
               <div class="profile card card-body px-3 pt-3 pb-0">
                    <div class="profile-head">
                         <div class="photo-content">
                              <div class="cover-photo rounded"></div>
                         </div>
                         <div class="profile-info">
                              <div class="profile-photo">
                                   <img src="../assets/profiles/<?= $profile ?>" class="rounded-circle square-img" alt="">
                              </div>
                              <div class="profile-details">

                                   <div class="profile-name px-3 pt-2">
                                        <h4 class="text-primary fw-bold mb-0"><?= $username ?></h4>
                                        <p><?= $email ?></p>
                                   </div>
                                   <div class="dropdown ms-auto">
                                        <a href="#" class="btn btn-primary light sharp" data-bs-toggle="dropdown" aria-expanded="true"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewbox="0 0 24 24" version="1.1">
                                                  <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                       <rect x="0" y="0" width="24" height="24"></rect>
                                                       <circle fill="#000000" cx="5" cy="12" r="2"></circle>
                                                       <circle fill="#000000" cx="12" cy="12" r="2"></circle>
                                                       <circle fill="#000000" cx="19" cy="12" r="2"></circle>
                                                  </g>
                                             </svg></a>
                                        <ul class="dropdown-menu dropdown-menu-end">
                                             <li class="dropdown-item">
                                                  <a data-bs-toggle="modal" data-bs-target="#changeprofilemodal">
                                                       <i class="fa fa-user-circle text-primary me-2"></i> Change Profile
                                                  </a>
                                             </li>
                                             <li class="dropdown-item">
                                                  <a data-bs-toggle="modal" data-bs-target=".bd-logout-modal-sm">
                                                       <svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger" width="18" height="18" viewbox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="margin-right: 4.5px;">
                                                            <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                                                            <polyline points="16 17 21 12 16 7"></polyline>
                                                            <line x1="21" y1="12" x2="9" y2="12"></line>
                                                       </svg>
                                                       <span>Logout</span>
                                                  </a>
                                             </li>
                                        </ul>
                                   </div>

                              </div>
                         </div>
                    </div>
               </div>
          </div>
     </div>
     <div class="row">

          <div class="col-xl-12">
               <div class="card">
                    <div class="card-body">
                         <div class="settings-form">
                              <h4 class="text-primary">Account Information</h4>
                              <form>
                                   <div class="mb-3">
                                        <table class="table">
                                             <tbody>
                                                  <tr>
                                                       <th scope="row">Username</th>
                                                       <td><?= $username ?> # <?= $userid ?></td>
                                                  </tr>
                                                  <tr>
                                                       <th scope="row">Whatsapp Number</th>
                                                       <?php if (!$number) : ?>
                                                            <td><a class="text-primary" data-bs-target="#phonesetmodal" data-bs-toggle="modal">Set up below!</a></td>
                                                       <?php else : ?>
                                                            <td class="text-primary"><?= $nums ?></td>
                                                       <?php endif; ?>
                                                  </tr>
                                                  <tr>
                                                       <th scope="row">Email</th>
                                                       <td><?= $email ?></td>
                                                  </tr>
                                                  <tr>
                                                       <th scope="row">Password</th>
                                                       <td><a class="text-primary" data-bs-target="#cpassmodal" data-bs-toggle="modal">Change password</a></td>
                                                  </tr>
                                                  <tr>
                                                       <th scope="row">Secure Login</th>
                                                       <td>
                                                            <?php if($userdata['secure_login']) : ?>
                                                                 <input type="checkbox" class="form-check-input" id="basic_checkbox_1" name="rememberme" checked="true">
                                                            <?php else :?>
                                                                 <input type="checkbox" class="form-check-input" id="basic_checkbox_1" name="rememberme">
                                                            <?php endif; ?>
                                                       </td>
                                                  </tr>
                                                  <tr>
                                                       <th scope="row">Created at</th>
                                                       <td><?= date('Y-m-d H:i:s', $created_at) ?></td>
                                                  </tr>
                                             </tbody>
                                        </table>
                                   </div>
                                   <div class="mb-3">
                                        <label>Characters</label>
                                        <div class="widget-media">
                                             <ul class="timeline">
                                                  <?php for ($i = 0; $i < 3; $i++) : ?>
                                                       <?php if (isset($_SESSION["char-$i"]) && $data = $_SESSION["char-$i"]) : ?>
                                                            <li>
                                                                 <div class="timeline-panel character-list">
                                                                      <div class="media me-2 img-char">
                                                                           <div class="img-conta-char">
                                                                                <img alt="image" src="../assets/skins/<?= $data['pskin'] ?>.png">
                                                                           </div>
                                                                      </div>
                                                                      <div class="media-body">
                                                                           <h5 class="mb-1"><?= $data['name'] ?></h5>
                                                                           <small class="d-block">Level <?= $data['level'] ?>, <span class="text-primary">$<?= number_format($data['money'], 2, ',', '.') ?></span></small>
                                                                      </div>
                                                                      <a type="button" class="btn btn-primary light sharp" href="<?= 'character.php?c=' . $i . '/' . $data['key'] ?>">
                                                                           <svg width="18px" height="18px" viewbox="0 0 24 24" version="1.1">
                                                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                                     <rect x="0" y="0" width="24" height="24"></rect>
                                                                                     <circle fill="#000000" cx="5" cy="12" r="2"></circle>
                                                                                     <circle fill="#000000" cx="12" cy="12" r="2"></circle>
                                                                                     <circle fill="#000000" cx="19" cy="12" r="2"></circle>
                                                                                </g>
                                                                           </svg>
                                                                      </a>
                                                                 </div>
                                                            </li>
                                                       <?php endif; ?>
                                                  <?php endfor; ?>
                                             </ul>
                                        </div>
                                   </div>
                              </form>
                         </div>
                    </div>
               </div>
          </div>
     </div>
</div>

<div class="modal fade" id="changeprofilemodal">
     <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
               <div class="modal-header">
                    <h5 class="modal-title">Change profile</h5>
                    <button type="button" class="btn btn-close text-white" data-bs-dismiss="modal"></button>
               </div>
               <div class="modal-body">
                    <div class="mdl profile-photo text-center">
                         <img src="../assets/profiles/<?= $profile ?>" class="rounded-circle square-img" alt="">
                    </div>
                    <form action="./uploadProfile" method="post" enctype="multipart/form-data">
                         <div class="input-group mb-3">
                              <div class="form-file">
                                   <input type="file" class="form-file-input form-control profile-input" name="profile" accept="image/png, image/jpeg, image/jpg" required>
                              </div>
                              <span class="input-group-text">Upload</span>
                         </div>

                         <div class="text-center">
                              <button type="submit" class="btn btn-primary">Save changes</button>
                         </div>
                    </form>
               </div>
          </div>
     </div>
</div>

<div class="modal fade" id="cpassmodal">
     <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
               <div class="modal-header">
                    <h5 class="modal-title">Change Password Form</h5>
               </div>
               <div class="modal-body">
                    <form id="changepassform" method="post">
                         <div class="mb-3">
                              <label class="form-label">Current Password <span class="text-danger fs-07 cal-1"> *</span></label>
                              <input type="password" placeholder="Current Password" class="form-control" name="currentpass">
                         </div>
                         <div class="mb-3">
                              <label class="form-label">New Password <span class="text-danger fs-07 cal-2"> *</span></label>
                              <input type="password" placeholder="Create new strength password" class="form-control" name="newpass">
                         </div>
                         <div class="mb-3">
                              <label class="form-label">Repeat New Password <span class="text-danger fs-07 cal-3"> *</span></label>
                              <input type="password" placeholder="Repeat new strength password" class="form-control" name="repeatnewpass">
                         </div>
                         <div class="text-center">
                              <button type="button" class="btn btn-dark light mr-3" data-bs-dismiss="modal">Cancel</button>
                              <button type="submit" class="btn btn-primary sbm">Change Password</button>
                         </div>
                    </form>
               </div>
          </div>
     </div>
</div>

<?php if (!$number) : ?>
     <div class="modal fade" id="phonesetmodal">
          <div class="modal-dialog modal-dialog-centered" role="document">
               <div class="modal-content">
                    <div class="modal-header">
                         <h5 class="modal-title">Whatsapp Verification</h5>
                    </div>
                    <div class="modal-body">
                         <?php if (isset($_SESSION['numverify'])) : ?>
                              <form method="post" id="numberissend">
                                   <div class="col-xl-12">
                                        <div class="alert alert-success left-icon-big alert-dismissible fade show">
                                             <div class="media">
                                                  <div class="alert-left-icon-big">
                                                       <span><i class="mdi mdi-whatsapp"></i></span>
                                                  </div>
                                                  <div class="media-body">
                                                       <h5 class="mt-1 mb-2">Verification Sent!</h5>
                                                       <p class="mb-0">We have sent whastapp verification to your number: <?= $_SESSION['numverify']['number'] ?></p>
                                                  </div>
                                             </div>
                                        </div>
                                   </div>
                                   <div class="text-center">
                                        <input type="text" class="d-none" value="<?= $_SESSION['numverify']['number'] ?>" name="number">
                                        <button type="button" class="btn btn-dark light btn-change-mod" mod-target="#phoneresendmodal">Resend Verification</button>
                                   </div>
                              </form>
                         <?php else : ?>
                              <form id="numberverify" method="post">
                                   <div class="mb-3">
                                        <label class="form-label">Whastapp Number</label>
                                        <input type="number" placeholder="62xxxxxxxxxx" class="form-control" name="number">
                                   </div>
                                   <div class="text-center">
                                        <button type="button" class="btn btn-dark light mr-3" data-bs-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-primary sbm">Submit</button>
                                   </div>
                              </form>
                         <?php endif; ?>
                    </div>
               </div>
          </div>
     </div>
     <?php if (isset($_SESSION['numverify'])) : ?>
          <div class="modal fade" id="phoneresendmodal">
               <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                         <div class="modal-header">
                              <h5 class="modal-title">Whatsapp Verification</h5>
                         </div>
                         <div class="modal-body">
                              <form id="renumberverify" method="post">
                                   <div class="mb-3">
                                        <label class="form-label">Whastapp Number</label>
                                        <input type="number" placeholder="62xxxxxxxxxx" class="form-control" name="number" value="<?= $_SESSION['numverify']['number'] ?>">
                                   </div>
                                   <div class="text-center">
                                        <button type="button" class="btn btn-dark light mr-3" data-bs-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-primary sbm">Submit</button>
                                   </div>
                              </form>
                         </div>
                    </div>
               </div>
          </div>
     <?php endif; ?>
<?php endif; ?>
<?php
include '../layouts/bottom.php';
?>