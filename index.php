    <?php

//koneksi database
    mysql_connect("localhost", "root", "");
    mysql_select_db("pagination");

//fungsi pagination
    $BatasAwal = 3;
    if (!empty($_GET['page'])) {
        $hal = $_GET['page'] - 1;
        $MulaiAwal = $BatasAwal * $hal;
    } else if (!empty($_GET['page']) and $_GET['page'] == 1) {
        $MulaiAwal = 0;
    } else if (empty($_GET['page'])) {
        $MulaiAwal = 0;
    }

//tampil data
    $query = mysql_query("SELECT * FROM artikel LIMIT $MulaiAwal , $BatasAwal");
    echo '';
    while ($record = mysql_fetch_array($query)) {
        echo '
  <div style="width:400px;margin:auto;border:1px solid">      
  <table>
    <tr>
        <td>Judul</td>
        <td>:</td>
        <td>' . $record['judul'] . '</td>
    </tr>
    <tr>
        <td>Isi</td>
        <td>:</td>
        <td>' . $record['isi'] . '</td>
    </tr>
 </table>
</div> 
';
    }

//navigasi
    $cekQuery = mysql_query("SELECT * FROM artikel");
    $jumlahData = mysql_num_rows($cekQuery);
    if ($jumlahData > $BatasAwal) {
        echo '<br/><center><div style="font-size:10pt;">Page : ';
        $a = explode(".", $jumlahData / $BatasAwal);
        $b = $a[0];
        $c = $b + 1;
        for ($i = 1; $i <= $c; $i++) {
            echo '<a style="text-decoration:none;';
            if ($_GET['page'] == $i) {
                echo 'color:red';
            }
            echo '" href="?page=' . $i . '">' . $i . '</a>, ';
        }
        echo '</div></center>';
    }
    
    /*
     author : heru purwito
     website : herupurwito.com
     email : me@herupurwito.com
     */
    ?>