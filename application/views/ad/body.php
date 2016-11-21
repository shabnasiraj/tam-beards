<!-- Intro Header -->
    <header class="intro">
        <div class="intro-body">
            <div class="container">
            <div class="row" id="logo-container">

                <div class="navbar-brand page-scroll logo">
                    <i class="fa fa-play-circle"></i> <span class="light">Swedish</span> Integration
                </div>
            
            </div>
                <div class="row" id="logo-info">
            
                        <p class="logo-text">Fitting in has never been easier .
                            <!--<br>Created by Toma and the beards.-->
                        </p>
                        <a id="form-button" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-right animated"></i>
                        </a>
                    </div>
                <div class="row" id="marker-form" style="display:none;">
                  
                  <form id="adForm" >

                  <div class="form-group">
                    <label for="exampleSelect1">Select Language</label>
                    <select class="form-control" id="exampleSelect1" name="lang">
                      
                    <?php foreach($languageList as $lang): ?>
                      
                      <option value="<?php echo $lang['hack_language_id']; ?>"><?php echo $lang['hack_language_name']; ?></option>
                      <!-- <option value="2">English</option>
                      <option value="3">Russian</option> -->

                    <?php endforeach; ?>
                    </select>
                  </div>
                  <div class="form-group">
                    <label for="exampleTextarea">Enter text</label>
                    <textarea class="form-control" id="exampleTextarea" rows="3" name="text"></textarea>
                  </div>
                  
                  <button type="button" class="btn btn-primary" id="submit-button">Submit</button>
                  <button type="button" class="btn btn-secondary" style="color:black" id="cancel-button">Cancel</button>

                </form>
                </div>
                </div>
            </div>
        </div>
    </header>
    