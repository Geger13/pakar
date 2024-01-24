<center><h2>Ubah Kata Sandi</h2></center><hr>

<?php
   include "../lib/koneksi.php";

    $data = array();
	$data['sandilama'] = '';
	$data['sandibaru'] = '';

	if (isset($_POST['btnsimpan'])) {
		$sandilama = isset($_POST['sandilama']) ? $_POST['sandilama'] : '';
		$sandibaru = isset($_POST['sandibaru']) ? $_POST['sandibaru'] : '';

		// Lakukan operasi atau validasi sesuai kebutuhan di sini
		// Misalnya, memeriksa apakah kata sandi lama sesuai dengan yang ada di database
		// dan apakah kata sandi baru memenuhi kriteria tertentu.
		// Jangan lupa untuk mengamankan data sebelum menggunakannya dalam query.

		// Contoh pemeriksaan sederhana:
		if (!empty($sandilama) && !empty($sandibaru)) {
			// Lakukan sesuatu dengan kata sandi lama dan kata sandi baru
			echo "Proses penyimpanan valid.";
		} else {
			echo "Harap isi kedua kata sandi.";
		}
	}
?>

<form method="POST">
   <table>
   	  <tr>
   	    <td>Kata Sandi Lama </td>
   	    <td>: <input type="password" name="sandilama"></td>
   	  </tr>

   	  <tr>
   	    <td>Kata Sandi Baru </td>
   	    <td>: <input type="password" name="sandibaru"></td>
   	  </tr>

   	  <tr>
   	  	<td>&nbsp;</td>
   	  	<td>&nbsp;&nbsp;<input type="submit" name="btnsimpan" value="Simpan"></td>
   	  </tr>
   </table>
</form>
