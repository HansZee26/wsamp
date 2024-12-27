<?php
$number = $_SESSION['userdata']['number'];
$isfull = true;
?>
<div class="dlabnav">
     <div class="dlabnav-scroll">
          <ul class="metismenu mb-5" id="menu">
               <li><a class="" href="../user/home.php" aria-expanded="false">
                         <i class="fas fa-home"></i>
                         <span class="nav-text">Home</span>
                    </a>
               </li>

               <li><a class="has-arrow " href="javascript:void()" aria-expanded="false">
                         <i class="fas fa-users"></i>
                         <span class="nav-text">Characters</span>
                    </a>
                    <ul aria-expanded="false">
                         <?php for ($i = 0; $i < 3; $i++) : ?>
                              <?php if (isset($_SESSION["char-$i"]) && $data = $_SESSION["char-$i"]) : ?>
                                   <li><a href="<?= 'character.php?c=' . $i . '/' . $data['key'] ?>"><?= charName($data['name']) ?></a></li>
                              <?php else : ?>
                                   <?= $isfull = false; ?>
                                   <li><a data-bs-target="#createCharModal" data-bs-toggle="modal">Create New +</a></li>
                              <?php endif; ?>
                         <?php endfor; ?>
                    </ul>
               </li>

               <li><a href="../user/character-story.php" class="" aria-expanded="false">
                         <i class="fas fa-memo-pad"></i>
                         <span class="nav-text">Character Story</span>
                    </a>
               </li>
               <li><a href="../user/profile.php" class="" aria-expanded="false">
                         <i class="fas fa-user"></i>
                         <span class="nav-text">Profile</span>
                    </a>
               </li>

          </ul>

          <div class="copyright">
               <p><strong>Alophy High Life</strong> © 2024 All Rights Reserved</p>
               <!-- <p class="fs-12">Made with <span class="heart"></span> by DexignLabs</p> -->
          </div>
     </div>
</div>

<!-- Create Character Modal -->
<div class="modal fade" id="createCharModal">
     <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
               <div class="modal-header">
                    <h5 class="modal-title">Character Creator</h5>
               </div>
               <div class="modal-body">
                    <?php if (!$number) : ?>
                         <div class="col-xl-12">
                              <div class="alert alert-danger left-icon-big alert-dismissible fade show">
                                   <div class="media">
                                        <div class="alert-left-icon-big">
                                             <span><i class="mdi mdi-lock"></i></span>
                                        </div>
                                        <div class="media-body">
                                             <h5 class="mt-1 mb-2">This Feature Locked!</h5>
                                             <p class="mb-0">Please linked your Whatsapp number to Create Character. <a href="./profile" class="text-primary">Click here!</a></p>
                                        </div>
                                   </div>
                              </div>
                         </div>
                    <?php elseif ($isfull) : ?>
                         <div class="col-xl-12">
                              <div class="alert alert-danger left-icon-big alert-dismissible fade show">
                                   <div class="media">
                                        <div class="alert-left-icon-big">
                                             <span><i class="mdi mdi-lock"></i></span>
                                        </div>
                                        <div class="media-body">
                                             <h5 class="mt-1 mb-2">Character Creator Locked!</h5>
                                             <p class="mb-0">You already have 3 characters, you can't create anymore.</p>
                                        </div>
                                   </div>
                              </div>
                         </div>
                    <?php else : ?>
                         <form id="cmodChar" method="POST">
                              <div class="mb-3">
                                   <label class="form-label">Character Name <span class="text-danger">*</span></label>
                                   <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Firstname" name="fn" required>
                                        <input type="text" class="form-control" placeholder="Lastname" name="ln" required>
                                   </div>
                              </div>
                              <div class="mb-3">
                                   <label class="form-label">Origin <span class="text-danger">*</span></label>
                                   <select class="default-select wide form-control" name="origin" required>
                                        <option>United States Of America</option>
                                        <option>Singapore</option>
                                        <option>Indonesia</option>
                                        <option>Phillpines</option>
                                        <option>Russian</option>
                                        <option>Australia</option>
                                        <option>China</option>
                                        <option>Colombia</option>
                                        <option>Denmark</option>
                                        <option>Italian</option>
                                        <option>Germany</option>
                                        <option>Japanese</option>
                                        <option>Mexico</option>
                                   </select>
                              </div>
                              <div class="mb-3">
                                   <label class="form-label">Gender <span class="text-danger">*</span></label>
                                   <select class="default-select form-control wide mb-3" name="gender" required>
                                        <option>Famale</option>
                                        <option>Male</option>
                                   </select>
                              </div>
                              <div class="mb-3">
                                   <label class="form-label">Date of Birth <span class="text-danger">*</span></label>
                                   <input name="birth" class="datepicker form-control" id="datepicker" type="date" max="2005-12-31" min="1970-12-31" required>
                              </div>
                              <div class="text-center">
                                   <button type="button" class="btn btn-dark light" data-bs-dismiss="modal">Cancel</button>
                                   <button type="submit" class="btn btn-primary sbm">Create character</button>
                              </div>
                         </form>
                    <?php endif; ?>
               </div>
          </div>
     </div>
</div>