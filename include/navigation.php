<?php
$sql = "SELECT * FROM recept_kategorija WHERE parent=0";
$parent_query = $db->query($sql);
 ?>

<!--Dinamičko kreiranje navigacije p-parent; d-dijete-->
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <ul class="nav navbar-nav">
      <?php while ($p = mysqli_fetch_assoc($parent_query)): ?>
      <!--Spremi id u novu varijablu,
      dohvati naziv pod_kategorije
      saznaj tko su mu djeca
      ispiši pod_kategorije
      -->
      <?php
      $p_id=$p['Id_kategorija'];
      $sql2 = "SELECT * FROM recept_kategorija WHERE parent = '$p_id'";
      $d = $db->query($sql2);
      ?>
      <!-- Glavne kategorije -->
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" ><?php echo $p['Kategorija_naslov']; ?></a>
        <ul class="dropdown-menu" role="menu">
          <!--Ispisi sve pod_kategorije-->
          <<?php while($dijete=mysqli_fetch_assoc($d)): ?>
          <li><a href="#"><?php echo $dijete['Kategorija_naslov']; ?></a></li>
          <?php endwhile; ?>
        </ul>
      </li>
    <?php endwhile; ?>
  </ul>
  </div>
</nav>
