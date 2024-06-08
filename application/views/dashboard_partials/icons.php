<body id="mycont">
<div  class="main-panel ps-container ps-theme-default ps-active-y">
<div class="content">
          <div class="container-fluid">

          <?php $page='dashboard';?>
            
                        
                        
                        <div class="row">
                          <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="card card-stats">
                              <div class="card-header card-header-success card-header-icon">
                                <div class="card-icon">
                                  <i class="material-icons">groups</i>
                                </div>
                                <p class="card-category">Active Member</p>
                                <h3 class="card-title"><?php echo $active ?></h3>
                              </div>
                              <div class="card-footer">
                                  <div class="stats">
                                  <i class="material-icons">update</i> Just Updated
                                </div> 
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="card card-stats">
                              <div class="card-header card-header-warning card-header-icon">
                                <div class="card-icon">
                                  <i class="material-icons">engineering</i>
                                </div>
                                <p class="card-category">Inactive Members</p>
                                <h3 class="card-title"><?php echo $inactive ?></h3>
                              </div>
                              <div class="card-footer">
                                <!-- <div class="stats">
                                  <i class="material-icons">update</i> Just Updated
                                </div> -->
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="card card-stats">
                              <div class="card-header card-header-info card-header-icon">
                                <div class="card-icon">
                                  <i class="material-icons">settings_accessibility</i>
                                </div>
                                <p class="card-category">Daily Visitors</p>
                                <h3 class="card-title"><?php $query = $this->db->query('SELECT * FROM daily_members'); echo $query->num_rows();?></h3>
                              </div>
                              <div class="card-footer">
                                 <!-- <div class="stats">
                                  <i class="material-icons">update</i> Just Updated
                                </div> -->
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="card card-stats">
                              <div class="card-header card-header-danger card-header-icon">
                                <div class="card-icon">
                                  <i class="material-icons">paid</i>
                                </div>
                                <p class="card-category">Unpaid Members</p>
                                <h3 class="card-title"><?php echo $unpaid ?></h3>
                              </div>
                              <div class="card-footer">
                                <!-- <div class="stats">
                                  <i class="material-icons">update</i> Just Updated
                                </div> -->
                              </div>
                            </div>
                          </div>

                                <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="card card-stats">
                              <div class="card-header card-header card-header-icon">
                                <div class="card-icon">
                                  <i class="material-icons">group_off</i>
                                </div>
                                <p class="card-category">Dormant Members</p>
                                <h3 class="card-title"><?php echo $dormant ?></h3>
                              </div>
                              <div class="card-footer">
                                <!-- <div class="stats">
                                  <i class="material-icons">update</i> Just Updated
                                </div> -->
                              </div>
                            </div>
                          </div>


                          <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="card card-stats">
                              <div class="card-header card-header-success card-header-icon">
                                <div class="card-icon">
                                  <i class="material-icons">wallet</i>
                                </div>
                                <p class="card-category">Balance</p>
                                <h3 class="card-title">$<?php $query = $this->db->query('SELECT SUM( balance_status)as total FROM members')->row(); echo floatval($query->total);?></h3>
                              </div>
                              <div class="card-footer">
                                 <!-- <div class="stats">
                                  <i class="material-icons">update</i> Just Updated
                                </div> -->
                              </div>
                            </div>
                          </div>


                        </div>
                        
                        <br>
                        
                      </div>
                    </div>