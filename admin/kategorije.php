<?php
require_once '../system/init.php';
include 'include/head.php';
include 'include/navigation.php';

//funkcija za ispis grasaka
function prikazi_greske($poruka){
  $prikazi = '<ul class= "bg-danger">';
  foreach ($poruka as $p) {
    $prikazi .= '<li class="text-danger">'.$p.'</li>';
  }
  $prikazi .= '</ul>';
  return $prikazi;
}
//delete
if(isset($_GET['delete']) && !empty($_GET['delete'])){
  $delete_id = (int)$_GET['delete'];
  $sql = "DELETE FROM recept_kategorija WHERE Id_kategorija = '$delete_id'";
  $db->query($sql);
  header('Location: kategorije.php');
}
//edit
if(isset($_GET['edit']) && !empty($_GET['edit'])){
  $edit_id = (int)$_GET['edit'];
  $sql = "SELECT * FROM recept_kategorija WHERE Id_kategorija = '$edit_id'";
  $edit_resultat = $db->query($sql);
  $eBrand = mysqli_fetch_assoc($edit_resultat);
}


//postavljanje greske
if(isset($_POST['kategorija'])){
          $poruka = array();
          $kat = $_POST['kategorija'];
          //ako je prazno
          if($_POST['kategorija'] == ''){
            $poruka[] .= 'Category name is blank :/';
          }
          //postoji li u bazi
          $sql = "SELECT * FROM recept_kategorija WHERE Kategorija_naslov= '$kat'";
          if(isset($_GET['edit'])){
            $sql = "SELECT * FROM recept_kategorija WHERE Kategorija_naslov= '$kat' AND Id_kategorija !='$edit_id' ";
          }
          $rezultat = $db ->query($sql);
          $prebroji = mysqli_num_rows($rezultat);
          if($prebroji > 0){
            $poruka[] .= "Category ". $kat . " is already in database.";
          }
          //ispisi poruku ili dodaj u bazu
          if(!empty($poruka)){
            echo prikazi_greske($poruka);
          }
          else{
            $sql = "INSERT INTO recept_kategorija (Kategorija_naslov) VALUES ('$kat')";
            if(isset($_GET['edit'])){
              $sql = "UPDATE recept_kategorija SET Kategorija_naslov = '$kat' WHERE Id_kategorija= '$edit_id'";
            }
            $db->query($sql);
            header('Location: kategorije.php');
          }
}

$sql = "SELECT * FROM recept_kategorija ORDER BY Parent";
$s = $db->query($sql);
 ?>
<div class="container-fluid adminpanel">
  <div class="col-md-6">
    <!--Dodaj novu kategoriju / Edit staru kategoriju - Bootstrap inline form-->
    <h3><?=((isset($_GET['edit'])))?'Edit' : 'Add'?> Category </h3>
    <form class="form-inline" action="kategorije.php<?=((isset($_GET['edit']))? '?edit='.$edit_id:'')?>" method="post">
      <div class="form-group">
        <?php
        $value = '';
        if(isset($_GET['edit'])){
          $value = $eBrand['Kategorija_naslov'];
        }
        else{
          if(isset($_POST['kategorija']))
          {
            $value = $_POST['kategorija'];
          }
        }

        ?>
        <input type="text" name="kategorija" id="kategorija" class="form-control" value="<?= $value;?>">
        <?php if(isset($_GET['edit'])) :?>
          <a href="kategorije.php" class="btn"> Cancel </a>
        <?php endif; ?>
        <input type="submit" name="dodaj_kategoriju" value="<?=((isset($_GET['edit'])))?'Edit' : 'Add'?> Category" class="btn">
      </div>

    </form> -->
    <hr>
  <div class="table-responsive">
    <h2>Edit / Delete</h2>
<hr>
<table class="table table-border admin-tablica-kategorija">
  <thead>
    <th>Main Category</th>
    <th>Subcategory Category</th>
    <th>Edit</th>
    <th>Delete</th>
  </thead>
  <tbody>
    <!-- Ispis glavnih kategorija -->
    <?php
    $sql = "SELECT * FROM recept_kategorija WHERE Parent = 0";
    $s = $db->query($sql);
    while($kategorija = mysqli_fetch_assoc($s)):
      $parent_id = (int)$kategorija['Id_kategorija'];
      $sql2= "SELECT * FROM recept_kategorija WHERE parent = '$parent_id'";
      $c_result=$db->query($sql2);
      ?>
    <tr>
      <td>
        <?=$kategorija['Kategorija_naslov'];?>
      </td>
      <td></td>
      <td><a href="kategorije.php?edit=<?= $kategorija['Id_kategorija']; ?>" class="btn"><span class="glyphicon glyphicon-pencil"></span></a></td>
      <td><a href="kategorije.php?delete=<?= $kategorija['Id_kategorija']; ?>" class="btn"><span class="glyphicon glyphicon-remove-sign"></span></a></td>
    </tr>
    <!-- Ispis podkategorija -->
      <?php while($child = mysqli_fetch_assoc($c_result)): ?>
        <tr>
          <td></td>
          <td><?= $child['Kategorija_naslov'] ?></td>
          <td><a href="kategorije.php?edit=<?= $child['Id_kategorija']; ?>" class="btn"><span class="glyphicon glyphicon-pencil"></span></a></td>
          <td><a href="kategorije.php?delete=<?= $child['Id_kategorija']; ?>" class="btn"><span class="glyphicon glyphicon-remove-sign"></span></a></td>
        </tr>
        <?php endwhile; ?>

  <?php endwhile; ?>
  </tbody>
</table>
  </div>
  </div>
  <div class="col-md-6">
    <button class="btn" onclick="topFunction()" id="top_button" title="Go to top">Top</button>
  </div>

</div>


//botun za top (W3Schools)
<script>
window.onscroll = function() {scrollFunction()};
function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("top_button").style.display = "block";
    } else {
        document.getElementById("top_button").style.display = "none";
    }
}
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script>


<?php include 'include/footer.php' ?>
