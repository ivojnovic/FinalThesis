<?php
$sql = "SELECT * FROM recept WHERE featured = 0 LIMIT 9";
$featured = $db->query($sql);
 ?>


<div class="container-fluid main_content">
  <div class="row">
    <div class="col-md-12">
      <h2 class="featured">Featured Recipes</h2>
    </div>
    <div class="row prikaz">
            <?php while($p = mysqli_fetch_assoc($featured)): ?>
              <div class="col-md-4">
                <div class="thumbnail" style="margin-left: 30px;">
                  <p class="naziv"><?= $p['Naziv_recept']; ?></p>

                  <?php
                  $id_photo = $p['Id_fotografija'];
                  $s = "SELECT Fotografija FROM recept_fotografija WHERE Id_fotografija = $id_photo";
                  $s1 = $db->query($s);
                  $s2 = mysqli_fetch_assoc($s1);
                  ?>
                  <img alt="<?= $p['Naziv_recept'];?>" class="img-thumb" src="<?=$s2['Fotografija']?>">
                  <div class="caption">
                    <p><?= $p['Kratki_opis']; ?></p><br>

                  </div>
                  <div class="container-fluid" style="padding-bottom: 50px;padding-left: 17px;">
                  <button class="btn" data-target="#opis_recept" data-toggle="modal" type="button">See more</button>
                  </div>
                </div>
              </div>
            <?php endwhile; ?>
    </div>
  </div>
</div>
