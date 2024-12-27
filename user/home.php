<?php
include '../layouts/top.php';
$query = getSampQuery();
$isOnline = false;
if ($query['status'] === "Online") {
	$isOnline = true;
}
$headerLocation = "Home";
?>
<div class="container-fluid">
	<div class="row">
		<div class="col-xl-12">
			<div class="row">
				<div class="col-xl-6">
					<div class="row">
						<div class="col-xl-12">
							<div class="card">
								<div class="card-header border-0 flex-wrap">
									<h4 class="fs-20 font-w700 mb-2">Server Statistics</h4>
								</div>
								<div class="card-body">
									<div class="d-flex justify-content-between align-items-center flex-wrap">
										<div class="d-flex mb-2">
											<div class="d-inline-block position-relative donut-chart-sale mb-3 svs-chart">
												<?php if ($isOnline) : ?>
													<span class="donut1" data-peity='{ "fill": ["#09BD3C", "#f9f9f9"],   "innerRadius": 25, "radius": 15}'><?= $query['online'] ?>/<?= $query['maxplayers'] ?></span>
												<?php else : ?>
													<span class="donut1" data-peity='{ "fill": ["#09BD3C", "#FC2E53"],   "innerRadius": 25, "radius": 15}'>0/1</span>
												<?php endif; ?>
											</div>
											<div class="ms-3">
												<?php if ($isOnline) : ?>
													<h4 class="fs-20 font-w700 "><?= $query['online'] ?></h4>
													<span class="fs-16 font-w400 d-block">Online Players</span>
												<?php else : ?>
													<h4 class="fs-20 text-danger font-w700 ">Offline</h4>
													<span class="fs-9 font-w400 d-block">Server offline</span>
												<?php endif; ?>
											</div>
										</div>
										<div class="d-flex">
											<div class="d-flex me-5">
												<div class="mt-2">
													<svg width="13" height="13" viewbox="0 0 13 13" fill="none" xmlns="http://www.w3.org/2000/svg">
														<circle cx="6.5" cy="6.5" r="6.5" fill="#FC2E54">
														</circle>
													</svg>

												</div>
												<div class="ms-3">
													<h4 class="fs-20 font-w700 "><?= $query['maxplayers'] ?></h4>
													<span class="fs-15 font-w400 d-block">Max Players</span>
												</div>
											</div>
											<div class="d-flex">
												<div class="mt-2">
													<svg width="13" height="13" viewbox="0 0 13 13" fill="none" xmlns="http://www.w3.org/2000/svg">
														<circle cx="7" cy="6.5" r="6.5" fill="#FFCF6D">
														</circle>
													</svg>
												</div>
												<div class="ms-3">
													<h4 class="fs-20 font-w700 ">Version</h4>
													<span class="fs-14 font-w400 d-block"><?= $query['gamemode'] ? $query['gamemode'] : 'DL' ?></span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-12">
							<div class="card">
								<div class="card-header border-0 pb-0">
									<h4 class="fs-20 font-w700 mb-0">Characters
									</h4>
									<a class="btn-link" data-bs-target="#createCharModal" data-bs-toggle="modal">
										<i class="fas fa-plus fs-14"></i>
									</a>
								</div>
								<div class="card-body pb-100">
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
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-6">
					<div class="row">
						<div class="col-xl-12">
							<div class="row">
								<div class="col-xl-6 col-sm-6">
									<div class="card">
										<div class="card-body d-flex px-4  justify-content-between">
											<div>
												<div class="">
													<h2 class="fs-25 font-w700"><?= getTableDataCount('ucp') ?></h2>
													<span class="d-block fs-09 font-w400">Accounts registered</span>
												</div>
											</div>
											<div id="NewCustomers"></div>
										</div>
									</div>
								</div>
								<div class="col-xl-6 col-sm-6">
									<div class="card">
										<div class="card-body d-flex px-4  justify-content-between">
											<div>
												<div class="">
													<h2 class="fs-25 font-w700"><?= getTableDataCount('players') ?></h2>
													<span class="d-block fs-09 font-w400">Characters has created.</span>
												</div>
											</div>
											<div id="NewCustomers1"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-9">
							<div class="card">
								<div class="card-body p-4">
									<h4 class="card-intro-title fs-14">Alophy's Gallery</h4>
									<div class="bootstrap-carousel">
										<div class="carousel slide" data-bs-ride="carousel">
											<div class="carousel-inner">
												<div class="carousel-item active">
													<img class="d-block w-100" src="../assets/gallery/image-1.jpg" alt="Gallery Images">
												</div>
												<div class="carousel-item active">
													<img class="d-block w-100" src="../assets/gallery/image-2.jpg" alt="Gallery Images">
												</div>
												<div class="carousel-item active">
													<img class="d-block w-100" src="../assets/gallery/image-3.jpg" alt="Gallery Images">
												</div>
												<div class="carousel-item">
													<img class="d-block w-100" src="../assets/gallery/image-4.jpg" alt="Gallery Images">
												</div>
												<div class="carousel-item">
													<img class="d-block w-100" src="../assets/gallery/image-5.jpg" alt="Gallery Images">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php
include '../layouts/bottom.php';
