<?php
include '../layouts/top.php';
$db = new JSONDatabase('../database.json');
$userdata = $_SESSION['userdata'];
$userid = $_SESSION['userid'];
$username = $userdata['username'];

$admin = $userdata['admin'];
$csdata = false;
$disabled = "";
if ($db->get("myreq-$username-$userid")) {
     $cs_get_key = $db->get("myreq-$username-$userid")['id'];
     $cspart = explode($cs_get_key, "-");
     $csdata = $db->get("$cs_get_key");
     $disabled = $csdata['status']  === "pending" ? "disabled" : "";
}
?>
<div class="container-fluid">
     <?php if (!isset($_GET['mode']) || $_GET['mode'] === "user") : ?>
          <div class="row">
               <?php if ($admin) : ?>
                    <div class="col-xl-12">
                         <div class="card">
                              <div class="card-body">
                                   <a href="character-story.php?mode=panel" type="submit" class="btn btn-dark w-100">Open Admin Page</a>
                              </div>
                         </div>
                    </div>
               <?php endif; ?>
               <div class="col-xl-12">
                    <div class="card">
                         <div class="card-body">
                              <h4 class="mb-3">Character Story Information</h4>
                              <div class="row mb-5">
                                   <div class="col-xl-7 mb-3">
                                        <p class="mb-0 mt-0 fs-07">Sebelum membuat character story pastikan Character sudah memenuhi semua persyaratan yang ada di <a href="cs-rules" class="text-primary" target="_blank">Character Story Rules</a>. </p>
                                        <p class="mb-0 mt-0 fs-07">Pastikan character sudah memiliki level minimal 10 dan Tidak memiliki riwayat <span class="text-danger">Warn</span>.</p>
                                        <p class="mb-0 mt-0 fs-07">Upload character story melalui website <a href="https://pastebin.com/" class="text-primary" target="_blank">Pastebin</a> dan Paste link ke Character Story Form!</p>
                                        <p class="mb-0 mt-3 fs-07">Jika Character Story Form memiliki icon <i class="fa fa-lock text-danger fa-regular"></i> Berarti form sedang dikunci karna ada cs yang sedang Pending!</p>
                                   </div>
                                   <div class="col-xl-5">
                                        <?php if ($csdata) : ?>
                                             <?php if ($csdata['status'] === "pending") : ?>
                                                  <div class="alert alert-warning left-icon-big fade show">
                                                       <div class="media">
                                                            <div class="alert-left-icon-big">
                                                                 <span><i class="fa fa-exclamation fa-light"></i></span>
                                                            </div>
                                                            <div class="media-body">
                                                                 <div class="row">
                                                                      <div class="col-xl-12">
                                                                           <h5 class="mt-1 mb-0 fw-bold">You have an request</h5>
                                                                           <p class="mb-2 fs-08">Your character story request in pending!</p>
                                                                      </div>
                                                                 </div>
                                                            </div>
                                                       </div>
                                                  </div>
                                             <?php elseif ($csdata['status'] === "revoked") : ?>
                                                  <div class="alert alert-danger left-icon-big fade show">
                                                       <div class="media">
                                                            <div class="alert-left-icon-big">
                                                                 <span><i class="fa fa-exclamation fa-light"></i></span>
                                                            </div>
                                                            <div class="media-body">
                                                                 <div class="row">
                                                                      <div class="col-xl-12">
                                                                           <h5 class="mt-1 mb-0 fw-bold">Request Revoked!</h5>
                                                                           <p class="fs-08 mb-0">Your character story request Revoked!</p>
                                                                           <p class="fs-08 mb-0">Request for <span class="fw-bold"><?= $csdata['name'] ?></span> Revoked</p>
                                                                           <p class="mb-2 mt-0 fs-08">Revoke reason: <span class="fw-bold"><?= $csdata['reason'] ?></span></p>
                                                                      </div>
                                                                 </div>
                                                            </div>
                                                       </div>
                                                  </div>
                                             <?php elseif ($csdata['status'] === "approved") : ?>
                                                  <div class="alert alert-success left-icon-big fade show">
                                                       <div class="media">
                                                            <div class="alert-left-icon-big">
                                                                 <span><i class="fa fa-exclamation fa-light"></i></span>
                                                            </div>
                                                            <div class="media-body">
                                                                 <div class="row">
                                                                      <div class="col-xl-12">
                                                                           <h5 class="mt-1 mb-0 fw-bold">Request Approved</h5>
                                                                           <p class="fs-08 mb-0">Request for <span class="fw-bold"><?= $csdata['name'] ?></span> Approved</p>
                                                                           <p class="mb-2 fs-08">Your character story request approved by admin!</p>
                                                                      </div>
                                                                 </div>
                                                            </div>
                                                       </div>
                                                  </div>
                                             <?php endif; ?>
                                        <?php else : ?>
                                             <div class="alert alert-success left-icon-big fade show">
                                                  <div class="media">
                                                       <div class="alert-left-icon-big">
                                                            <span><i class="fa fa-check fa-light"></i></span>
                                                       </div>
                                                       <div class="media-body">
                                                            <div class="row">
                                                                 <div class="col-xl-12">
                                                                      <h5 class="mt-1 mb-0 fw-bold">Available to Request</h5>
                                                                      <p class="mb-2 fs-08">You're able to make Character Story request now!</p>
                                                                 </div>
                                                            </div>
                                                       </div>
                                                  </div>
                                             </div>
                                        <?php endif; ?>
                                        <div class="alert alert-social facebook fade show">
                                             <div class="media">
                                                  <div class="alert-social-icon">
                                                       <span><i class="fa fa-paste fa-light"></i></span>
                                                  </div>
                                                  <div class="media-body">
                                                       <h5 class="mt-1 mb-2 text-white fw-bold"><a href="https://pastebin.com" target="_blank">PasteBin</a></h5>
                                                       <p class="mb-0">Use PasteBin to upload your character story and request with Form</p>
                                                  </div>
                                             </div>
                                        </div>
                                   </div>
                              </div>
                              <h4 class="text-primary mb-3">Character Story Form <?php if ($csdata && $csdata['status'] === "pending") : ?><i class="fa fa-lock text-danger fa-regular"><?php else : ?><i class="fa fa-unlock text-success fa-regular"><?php endif; ?></i></h4>
                              <div class="row mb-3">
                                   <div class="col-xl-5 cs-input-char">
                                        <label class="form-label">Select Character <span class="text-danger fs-07">*</span></label>
                                        <select class="default-select wide form-control cs-character" required <?= $disabled ?>>
                                             <option value="-1">Choose character..</option>
                                             <?php for ($i = 0; $i < 3; $i++) : ?>
                                                  <?php if (isset($_SESSION["char-$i"]) && $data = $_SESSION["char-$i"]) : ?>
                                                       <?php if ($data['characterstory'] < 1) :  ?>
                                                            <option warn="<?= $data['warn'] ?>" level="<?= $data['level'] ?>" value="<?= $data['name'] ?>"><?= $data['name'] ?>, Level <?= $data['level'] ?></option>
                                                       <?php endif; ?>
                                                  <?php endif; ?>
                                             <?php endfor; ?>
                                        </select>
                                   </div>
                              </div>
                              <div class="mb-3 row">
                                   <div class="col-xl-5 cs-input-link">
                                        <label class="form-label">Pastebin Link <span class="text-danger fs-07">*</span></label>
                                        <input type="text" class="form-control cs-link" placeholder="https://pastebin.com/xxxxxx" <?= $disabled ?>>
                                   </div>
                              </div>
                              <div class="mb-3 characterstory cs-input-detail">
                                   <label class="form-label">Character Story Detail <span class="text-danger fs-07">*</span></label>
                                   <textarea style="font-size: 0.8rem;" class="form-control w-100 cs-detail" required <?= $disabled ?>></textarea>
                              </div>
                              <div class="row mb-3">
                                   <div class="col-xl-3">
                                        <?php if ($csdata) :  ?>
                                             <button type="submit" class="btn btn-primary submit-cs" cs-id="<?= $cspart[1] ?>" <?= $disabled ?>>Submit Character Story</button>
                                        <?php else : ?>
                                             <button type="submit" class="btn btn-primary submit-cs" <?= $disabled ?>>Submit Character Story</button>
                                        <?php endif; ?>
                                   </div>
                              </div>
                         </div>
                    </div>
               </div>
          </div>
     <?php elseif (isset($_GET['mode']) && $_GET['mode'] === "panel") : ?>
          <?php if (!$admin) : ?>
               <div class="row">
                    <div class="col-xl-12">
                         <div class="alert alert-danger left-icon-big alert-dismissible fade show">
                              <div class="media">
                                   <div class="alert-left-icon-big">
                                        <span><i class="fas fa-hexagon-exclamation"></i></span>
                                   </div>
                                   <div class="media-body">
                                        <h5 class="mt-1 mb-2">Missing Permissions.</h5>
                                        <p class="mb-0">You don't have permissions to access this page.</p>
                                        <p class="mb-0">Only Alophy staffs can access this page!</p>
                                   </div>
                              </div>
                         </div>
                         <a type="button" class="btn btn-danger light w-100" href="character-story.php?mode=user">Back to User Page</a>
                    </div>
               </div>
          <?php else : ?>
               <?php $existcs = false; ?>
               <div class="row">
                    <?php for ($i = 0; $i < getMaxCs(); $i++) : ?>
                         <?php if ($db->get("csreq-$i") && $data = $db->get("csreq-$i")) : ?>
                              <?php if ($data['status'] === "pending") : ?>
                                   <?php $existcs = true; ?>
                                   <div class="col-lg-3">
                                        <div class="card csr-pointer card-cs-panel" cs-id="<?= $i ?>">
                                             <div class="card-body p-3">
                                                  <h5><i class="fa fa-memo-pad fa-light text-warning me-2"></i> Requests #<?= $i ?></h5>
                                                  <p class="mb-0 mt-0"><?= $data['name'] ?></p>
                                                  <p class="mb-0 mt-0">Level <?= $data['level'] ?></p>
                                                  <p class="mb-0 mt-1"><?= date('Y-m-d H:i:s', $data['req_date']) ?></p>
                                             </div>
                                        </div>
                                   </div>
                              <?php endif; ?>
                         <?php endif; ?>
                    <?php endfor; ?>
                    <?php if (!$existcs) : ?>
                         <div class="col-xl-12">
                              <div class="alert alert-dark left-icon-big fade show">
                                   <div class="media">
                                        <div class="alert-left-icon-big">
                                             <span><i class="fas fa-hexagon-exclamation"></i></span>
                                        </div>
                                        <div class="media-body">
                                             <h5 class="mt-1 mb-2">No Such Request Available.</h5>
                                             <p class="mb-0">No such character story request available or on pending status.</p>
                                        </div>
                                   </div>
                              </div>
                         </div>
                    <?php endif; ?>
               </div>
          <?php endif; ?>
     <?php endif; ?>
</div>

<div class="modal fade" id="csviewmodal">
     <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
          <div class="modal-content">
               <div class="modal-header">
                    <h5 class="modal-title">Character Story Panel</h5>
               </div>
               <div class="modal-body">
                    <div class="mb-3">
                         <table style="width: 80%; vertical-align: center;">
                              <tbody>
                                   <tr>
                                        <th class="fs-08 text-white me-2" scope="row">Name:</th>
                                        <td class="fs-08 text-white csp-val1"></td>
                                   </tr>
                                   <tr>
                                        <th class="fs-08 text-white me-2" scope="row">Level:</th>
                                        <td class="fs-08 text-white csp-val2"></td>
                                   </tr>
                                   <tr>
                                        <th class="fs-08 text-white me-2" scope="row">Warn:</th>
                                        <td class="fs-08 text-white">
                                             <span class="text-danger csp-val3"></span>
                                        </td>
                                   </tr>
                                   <tr>
                                        <th class="fs-08 text-white me-2" scope="row">Link:</th>
                                        <td class="fs-08 text-white fs-07"><a href="" class="text-link csp-val4" target="_blank"></a></td>
                                   </tr>
                                   <tr>
                                        <th class="fs-08 text-white me-2" scope="row">Status:</th>
                                        <td class="fs-08 text-white"><i class="fa fa-circle-exclamation fa-light text-warning"></i> Pending</td>
                                   </tr>
                              </tbody>
                         </table>
                    </div>
                    <div class="mb-3">
                         <label class="form-label">Character Story Details</label>
                         <div class="card cs-detail-card " style="background-color: #161717;">
                              <div class="card-body p-2 csp-val5">
                              </div>
                         </div>
                    </div>
                    <button type="button" class="btn btn-primary me-2 cs-approve">Approve</button>
                    <button type="button" class="btn btn-danger me-2 cs-revoke">Revoke</button>
                    <button type="button" class="btn btn-dark light" data-bs-dismiss="modal">Cancel</button>
               </div>
          </div>
     </div>
</div>
<?php

include '../layouts/bottom.php';
?>

<script>
     var val = `Berapa umur karaktermu? \nBerapa level karaktermu? \nPertama kali membuat cs? `;
     $(document).ready(function($) {
          $('.characterstory textarea').val(val)
     })
</script>