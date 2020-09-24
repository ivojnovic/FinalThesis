
<?php
require_once 'system/init.php';
//head
include "include/head.php";
//pravokutnik s logom
include "include/logo_file.php";
//navigacija
include "include/navigation.php";
//Slika sa botunima za login i sign in
include "include/cover.php";
//Prikaz najnovijih recepata
include "include/featured.php";
include "include/footer.php";

?>

<!-- Modal -->
<div class="modal fade" id="opis_recept" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>
