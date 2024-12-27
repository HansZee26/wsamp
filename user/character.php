<?php
include '../layouts/top.php';
$userdata = $_SESSION['userdata'];
if (isset($_GET['c']) && $cparam = $_GET['c']) {
     $cparts = explode('/', $cparam);
     $cid = $cparts[0];
     $ckey = $cparts[1];
     $isv = false;

     if (isset($_SESSION["char-$cid"])) {
          if ($_SESSION["char-$cid"]['key'] === $ckey) {
               $cdata = $_SESSION["char-$cid"];
               $isv = true;
          }
     }
}

?>
<div class="container-fluid">
     <div class="row">
          <div class="col-xl-12">
               <div class="card">
                    <div class="card-header border-0">
                         <h4 class="text-primary">Character Statistic</h4>
                         <?php if ($isv) : ?>
                              <div class="dropdown ">
                                   <div class="btn-link" data-bs-toggle="dropdown">
                                        <svg width="24" height="24" viewbox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                             <circle cx="12.4999" cy="3.5" r="2.5" fill="#A5A5A5"></circle>
                                             <circle cx="12.4999" cy="11.5" r="2.5" fill="#A5A5A5"></circle>
                                             <circle cx="12.4999" cy="19.5" r="2.5" fill="#A5A5A5"></circle>
                                        </svg>
                                   </div>
                                   <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="character-story">Character Story</a>
                                        <a class="dropdown-item text-danger" data-bs-toggle="modal" data-bs-target="#delcharmodal">Delete Character</a>
                                   </div>
                              </div>
                         <?php endif; ?>
                    </div>
                    <div class="card-body">
                         <div class="mb-3">
                              <?php if ($isv) : ?>
                                   <div class="row">
                                        <div class="col-xl-3 text-center">
                                             <div class="mb-3">
                                                  <img alt="character-view" src="../assets/skins/<?= $cdata['pskin'] ?>.png">
                                             </div>
                                             <div class="mb-3">
                                                  <?php if (!$cdata['banned']) : ?>
                                                       <div class="alert alert-success fade show">
                                                            <h6 class="mt-1 mb-2 fw-bold"><?= $cdata['name'] ?></h6>
                                                            <p class="mb-0 text-primary">This character is active!</p>
                                                       </div>
                                                  <?php else : ?>
                                                       <div class="alert alert-danger fade show">
                                                            <h6 class="mt-1 mb-2 fw-bold">Banned by <span class="text-danger"><?= $cdata['banned']['admin'] ?></span></h6>
                                                            <p class="mb-0 text-white fs-08"><?= $cdata['banned']['reason'] ?></p>
                                                       </div>
                                                  <?php endif; ?>
                                             </div>
                                        </div>
                                        <div class="col-xl-8">
                                             <table class="table">
                                                  <tbody>
                                                       <tr>
                                                            <th scope="row">Username</th>
                                                            <td><?= $cdata['name'] ?> # <?= $cdata['id'] ?></td>
                                                       </tr>
                                                       <tr>
                                                            <th scope="row">User Control Panel</th>
                                                            <td><?= $cdata['ucp'] ?></td>
                                                       </tr>
                                                       <tr>
                                                            <th scope="row">Level</th>
                                                            <td><?= $cdata['level'] ?></td>
                                                       </tr>
                                                       <tr>
                                                            <th scope="row">Cash</th>
                                                            <td><span class="text-primary">$<?= number_format($cdata['money'], 2, ',', '.') ?></span></td>
                                                       </tr>
                                                       <tr>
                                                            <th scope="row">Bank Money</th>
                                                            <td><span class="text-primary">$<?= number_format($cdata['bmoney'], 2, ',', '.') ?></span></td>
                                                       </tr>
                                                       <tr>
                                                            <th scope="row">Gender</th>
                                                            <td><?= $cdata['gender'] ? 'Male' : 'Famale' ?></td>
                                                       </tr>
                                                       <tr>
                                                            <th scope="row">Character Story</th>
                                                            <?php if ($cdata['characterstory'] > 0) : ?>
                                                                 <td><span class="text-success">Active</span></td>
                                                            <?php else : ?>
                                                                 <td><span class="text-danger">Inactive</span></td>
                                                            <?php endif; ?>
                                                       </tr>
                                                       <tr>
                                                            <th scope="row">Download Chatlogs</th>
                                                            <td><a class="text-primary">Download</a></td>
                                                       </tr>
                                                       <tr>
                                                            <th scope="row">PlayTime</th>
                                                            <td><?= $cdata['hours'] ?>h <?= $cdata['minutes'] ?>m <?= $cdata['seconds'] ?>s</td>
                                                       </tr>
                                                       <tr>
                                                            <th scope="row">Last Login</th>
                                                            <td><?= $cdata['last_login'] ? $cdata['last_login'] : 'none' ?></td>
                                                       </tr>
                                                       <tr>
                                                            <th scope="row">Created at</th>
                                                            <td><?= $cdata['reg_date'] ? date('Y-m-d H:i:s', $cdata['reg_date']) : 'none' ?></td>
                                                       </tr>
                                                  </tbody>
                                             </table>
                                        </div>
                                   </div>
                              <?php else : ?>
                                   <div class="row">
                                        <div class="col-xl-12">
                                             <div class="alert alert-danger left-icon-big alert-dismissible fade show">
                                                  <div class="media">
                                                       <div class="alert-left-icon-big">
                                                            <span><i class="fas fa-hexagon-exclamation"></i></span>
                                                       </div>
                                                       <div class="media-body">
                                                            <h5 class="mt-1 mb-2">Load Character Failed.</h5>
                                                            <p class="mb-0">Failed while loading character data.</p>
                                                            <p class="mb-0">Misstype on url link or Character is not exists. Please try again</p>
                                                       </div>
                                                  </div>
                                             </div>
                                             <a type="button" class="btn btn-danger light w-100" href="home">Back to Home</a>
                                        </div>
                                   </div>
                              <?php endif; ?>
                         </div>
                    </div>
               </div>
          </div>
     </div>
</div>

<?php if($cdata) : ?>
<div class="modal fade" id="delcharmodal">
     <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
               <div class="modal-header">
                    <h5 class="modal-title">Delete character</h5>
               </div>
               <div class="modal-body">
                    <?php if ($cdata && $cdata['reg_date'] < time() + 86400 * 7) : ?>
                         <div class="col-xl-12">
                              <div class="media">
                                   <div class="media-body">
                                        <h5 class="mt-1 mb-2 fw-bold text-danger">Deletion Alert!</h5>
                                        <p class="mb-0 mt-0">Characters can only be deleted after 7 days from creation.</p>
                                        <p class="mb-0 mt-0">Contact the staff if there are mistakes in the creation.</p>
                                   </div>
                              </div>
                         </div>
                    <?php else : ?>
                         <form id="delcharform" method="post" data-cname="<?= $cdata['name'] ?>">
                              <div class="mb-3">
                                   <p class="text-white">Enter character name to confirm deletion Character.</p>
                                   <label class="form-label">Character Name</label>
                                   <input type="text" placeholder="<?= $cdata['name'] ?>" class="form-control renname" name="name">
                              </div>
                              <div class="text-center">
                                   <button type="button" class="btn btn-dark light mr-3" data-bs-dismiss="modal">Cancel</button>
                                   <button type="submit" class="btn btn-danger sbm">Delete Character!</button>
                              </div>
                         </form>
                    <?php endif; ?>
               </div>
          </div>
     </div>
</div>
<?php endif; ?>
<?php
include '../layouts/bottom.php';
?>