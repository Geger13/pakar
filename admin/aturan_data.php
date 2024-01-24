<?php
  include "../lib/koneksi.php";

  $batas = 7;
  $halaman = (isset($_GET['halaman'])) ? $_GET['halaman'] : 1;

  $posisi = ($halaman - 1) * $batas;

  echo "<center><h2>Data Basis Aturan</h2></center><hr>";

  $query = "SELECT a.kd_aturan, b.kd_penyakit, b.nm_penyakit, c.kd_gejala, c.nm_gejala, a.nl_prob 
            FROM tblaturan a, tblpenyakit b, tblgejala c 
            WHERE a.kd_penyakit=b.kd_penyakit AND a.kd_gejala=c.kd_gejala 
            ORDER BY b.kd_penyakit ASC, c.kd_gejala ASC 
            LIMIT $posisi, $batas";

  $tampil = mysqli_query($konek, $query); 
 ?>

<table border="0" cellpadding="2" width="100%">
  <tr>
    <td colspan="2" rowspan="2">
      <form action="?open=Aturan-Add&status=tambah" method="Post">
        <input type="submit" name="btntambah" value="Tambah Data" />
      </form>
    </td>
  </tr>
  <tr></tr>

  <tr bgcolor="#CCCCCC">
    <th> No </th>  
    <th width="20%"> Nama Penyakit </th>
    <th> Nama Gejala </th>
    <th> Nilai Probabilitas (%) </th> 
    <th colspan="2" width="10%"> Action </th>
  </tr>

  <?php
    $no = $posisi + 1;

    while ($data = mysqli_fetch_array($tampil)) {
      $warna = ($no % 2 == 1) ? '' : '#F5F5F5';

      echo "<tr bgcolor=$warna>
             <td align='center'>$no</td>  
             <td>$data[nm_penyakit]</td>
             <td>$data[nm_gejala]</td>
             <td align='center'>$data[nl_prob]</td>
             <td align='center'><a href='?open=Aturan-Edit&kode=$data[kd_aturan]' target='_self' alt='Edit Data'>Ubah</a></td> 
             <td align='center'><a href='?open=Aturan-Hapus&kode=$data[kd_aturan]' target='_self' alt='Delete Data'>Hapus</a></td>
           </tr>";
      $no++;
    }

    echo "</table>";

    $semuadata = "SELECT a.kd_aturan, b.kd_penyakit, b.nm_penyakit, c.kd_gejala, c.nm_gejala, a.nl_prob 
                  FROM tblaturan a, tblpenyakit b, tblgejala c 
                  WHERE a.kd_penyakit=b.kd_penyakit AND a.kd_gejala=c.kd_gejala 
                  ORDER BY b.kd_penyakit ASC, c.kd_gejala ASC";

    $query2 = mysqli_query($konek, $semuadata);
    $jmldata = mysqli_num_rows($query2);
    $jmlhalaman = ceil($jmldata / $batas);

    echo "<br> Halaman : ";

    for ($a = 1; $a <= $jmlhalaman; $a++) {
      if ($a != $halaman) {
        echo "<a href='?open=Basis-Aturan&halaman=$a'>$a</a> | ";
      } else {
        echo "<b>$a</b> | ";
      }
    }
?>
