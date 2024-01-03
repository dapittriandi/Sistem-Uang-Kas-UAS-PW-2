<?php 
  require 'connection.php';
  checkLogin();
  $user = mysqli_query($conn, "SELECT * FROM user INNER JOIN jabatan ON user.id_jabatan = jabatan.id_jabatan");
  $jabatan = mysqli_query($conn, "SELECT * FROM jabatan");
  if (isset($_POST['btnEditUser'])) {
    if (editUser($_POST) > 0) {
      setAlert("User has been changed", "Successfully changed", "success");
      header("Location: user.php");
    } else {
      setAlert("User failed to change!", "Failed change!", "error");
      header("Location: user.php");
    }
  }

  if (isset($_POST['btnTambahUser'])) {
    if (addUser($_POST) > 0) {
      setAlert("User has been added", "Successfully added", "success");
      header("Location: user.php");
    }
  }
?>

<!DOCTYPE html>
<html>
<head>
  <?php include 'include/css.php'; ?>
  <title>User</title>
  <link rel="stylesheet" href="assets/fonts/material-icon/css/material-design-iconic-font.min.css">
  <!-- fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500;700&Roboto+Condensed:wght@700;800&display=swap"
     rel="stylesheet">
</head>
<body class="hold-   sidebar-mini layout-fixed" style="font-family: 'Quicksand', sans-serif;">
<div class="wrapper">
  
  <?php include 'include/navbar.php'; ?>

  <?php include 'include/sidebar.php'; ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row justify-content-center mb-2">
          <div class="col-sm text-left">
            <h1 class="m-0 text-dark">User</h1>
          </div><!-- /.col -->
          <div class="col-sm text-right">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#tambahUserModal"><i class="fas fa-fw fa-plus"></i> Tambah User</button>
            <!-- Modal -->
            <div class="modal fade text-left" id="tambahUserModal" tabindex="-1" role="dialog" aria-labelledby="tambahUserModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <form method="post" enctype="multipart/form-data">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="tambahUserModalLabel">Tambah User</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" name="username" id="username" class="form-control" required>
                      </div>
                      <div class="form-group">
                        <label for="nama_lengkap">Nama Lengkap</label>
                        <input type="text" name="nama_lengkap" id="nama_lengkap" class="form-control" required>
                      </div>
                      <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" minlength="6" name="password" id="password" class="form-control" required>
                      </div>
                      <div class="form-group">
                        <label for="password_verify">Password Verify</label>
                        <input type="password" minlength="6" name="password_verify" id="password_verify" class="form-control" required>
                      </div>
                      <div class="form-group">
                        <label for="id_jabatan">Nama Jabatan</label>
                        <select name="id_jabatan" class="form-control" id="id_jabatan">
                          <?php foreach ($jabatan as $dj): ?>
                            <?php if ($dj['id_jabatan'] !== '1'): ?>
                              <option value="<?= $dj['id_jabatan']; ?>"><?= $dj['nama_jabatan']; ?></option>
                            <?php endif ?>
                          <?php endforeach ?>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="jenis_kelamin" class="form-label">Jenis Kelamin</label>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="jenis_kelamin" id="laki-laki" value="laki-laki">
                            <label class="form-check-label" for="laki-laki">
                                Laki-laki
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="jenis_kelamin" id="perempuan" value="perempuan">
                            <label class="form-check-label" for="perempuan">
                                Perempuan
                            </label>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="no_hp">No Hp</label>
                        <input type="number" minlength="6" name="no_hp" id="no_hp" class="form-control" required>
                      </div>
                      <div class="form-group">
                        <label for="asal">Asal</label>
                        <textarea class="form-control" id="asal" name="asal" rows="3"></textarea>
                      </div>
                      <div class="form-group">
                        <label for="photo">Photo</label>
                        <input type="file" class="form-control" id="photo" name="photo" required>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fas fa-fw fa-times"></i> Close</button>
                      <button type="submit" class="btn btn-primary" name="btnTambahUser"><i class="fas fa-fw fa-save"></i> Save</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg">
            <div class="table-responsive">
              <table class="table table-striped table-hover table-bordered" id="table_id">
                <thead>
                  <tr>
                    <th>No</th>
                    <th>Username</th>
                    <th>Nama Lengkap</th>
                    <th>Nama Jabatan</th>
                    <th>Jenis Kelamin</th>
                    <th>No Hp</th>
                    <th>Asal</th>
                    <th>Photo</th>
                    <th>Aksi</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $i = 1; ?>
                  <?php foreach ($user as $du): ?>
                    <tr>
                      <td><?= $i++; ?></td>
                      <td><?= $du['username']; ?></td>
                      <td><?= $du['nama_lengkap']; ?></td>
                      <td><?= $du['nama_jabatan']; ?></td>
                      <td><?= $du['jenis_kelamin']; ?></td>
                      <td><?= $du['no_hp']; ?></td>
                      <td><?= $du['asal']; ?></td>
                      <td><?php $photoPath = 'assets/upload/' . $du['photo'];
                            echo '<img src="' . $photoPath . '" alt="Photo" style="max-width: 100px; max-height: 100px;">'; ?></td>
                      <td>
                        <?php if ($du['id_jabatan'] !== '1'): ?>
                          <!-- Button trigger modal -->
                          <a href="ubah_user.php?id_user=<?= $du['id_user']; ?>" class="badge badge-success" data-toggle="modal" data-target="#editUserModal<?= $du['id_user']; ?>">
                            <i class="fas fa-fw fa-edit"></i> Ubah
                          </a>
                          <!-- Modal -->
                          <div class="modal fade" id="editUserModal<?= $du['id_user']; ?>" tabindex="-1" role="dialog" aria-labelledby="editUserModalLabel<?= $du['id_user']; ?>" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                              <form method="post" enctype="multipart/form-data">
                                <input type="hidden" name="id_user" value="<?= $du['id_user']; ?>">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <h5 class="modal-title" id="tambahUserModalLabel">Ubah User</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                    </button>
                                  </div>
                                  <div class="modal-body">
                                    <div class="form-group">
                                      <label for="username<?= $du['id_user']; ?>">Username</label>
                                      <input type="hidden" name="username" value="<?= $du['username']; ?>">
                                      <input style="cursor: not-allowed;" disabled type="text" value="<?= $du['username']; ?>" id="username<?= $du['id_user']; ?>" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                      <label for="nama_lengkap<?= $du['id_user']; ?>">Nama Lengkap</label>
                                      <input type="text" name="nama_lengkap" id="nama_lengkap<?= $du['id_user']; ?>" class="form-control" required value="<?= $du['nama_lengkap']; ?>">
                                    </div>
                                    <div class="form-group">
                                      <label for="id_jabatan<?= $du['id_user']; ?>">Nama Jabatan</label>
                                      <select name="id_jabatan" class="form-control" id="id_jabatan<?= $du['id_user']; ?>">
                                          <option value="<?= $du['id_jabatan']; ?>"><?= $du['nama_jabatan']; ?></option>
                                        <?php foreach ($jabatan as $dj): ?>
                                          <?php if ($dj['id_jabatan'] !== '1'): ?>
                                            <?php if ($du['id_jabatan'] !== $dj['id_jabatan']): ?>
                                              <option value="<?= $dj['id_jabatan']; ?>"><?= $dj['nama_jabatan']; ?></option>
                                            <?php endif ?>
                                          <?php endif ?>
                                        <?php endforeach ?>
                                      </select>
                                    </div>
                                    <div class="form-group">
                                      
                                      <label for="jenis_kelamin<?= $du['id_user']; ?>" class="form-label">Jenis Kelamin</label>
                                      <div class="form-check">
                                          <input class="form-check-input" type="radio" name="jenis_kelamin" id="laki-laki<?= $du['id_user']; ?>" value="laki-laki">
                                          <label class="form-check-label" for="laki-laki<?= $du['id_user']; ?>">
                                              Laki-laki
                                          </label>
                                      </div>
                                      <div class="form-check">
                                          <input class="form-check-input" type="radio" name="jenis_kelamin" id="perempuan<?= $du['id_user']; ?>" value="perempuan">
                                          <label class="form-check-label" for="perempuan<?= $du['id_user']; ?>">
                                              Perempuan
                                          </label>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <label for="no_hp<?= $du['id_user']; ?>">No Hp</label>
                                      <input type="number" name="no_hp" id="no_hp<?= $du['id_user']; ?>" class="form-control" required value="<?= $du['no_hp']; ?>">
                                    </div>
                                    <div class="form-group">
                                      <label for="asal<?= $du['id_user']; ?>">asal</label>
                                      <textarea type="text" name="asal" id="asal<?= $du['id_user']; ?>" class="form-control" required value="<?= $du['asal']; ?>"></textarea>
                                    </div>
                                    <div class="form-group">
                                      <label for="photo<?= $du['id_user']; ?>">photo</label>
                                      <input type="file" name="photo" id="photo<?= $du['id_user']; ?>" class="form-control" required value="<?= $du['photo']; ?>">
                                    </div>
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fas fa-fw fa-times"></i> Close</button>
                                    <button type="submit" class="btn btn-primary" name="btnEditUser"><i class="fas fa-fw fa-save"></i> Save</button>
                                  </div>
                                </div>
                              </form>
                            </div>
                          </div>
                          <a data-nama="<?= $du['nama_lengkap']; ?>" class="btn-delete badge badge-danger" href="hapus_user.php?id_user=<?= $du['id_user']; ?>"><i class="fas fa-fw fa-trash"></i> Hapus</a>
                        <?php endif ?>
                      </td>
                    </tr>
                  <?php endforeach ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php include 'include/footer.php';?>

</div>
</body>
</html>
