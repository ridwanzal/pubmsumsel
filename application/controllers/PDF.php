<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
		require_once APPPATH.'third_party/fpdf/fpdf.php';


class PDF extends CI_Controller {
		
	public function __construct() {
    parent::__construct();
		$pdf = new FPDF();
		$pdf->AddPage();
    $this->load->model('admin/pengujian_model', 'pengujian');
  }

  function cetak_pdf($id)
  {
    $data = $this->db->get_where('pengujian', ['id'  => $id])->result_array();
    // var_dump($data); exit;
    
    $pdf = new FPDF('L','mm','A4'); //L = lanscape P= potrait
    // membuat halaman baru
    $pdf->AddPage();
    // setting jenis font yang akan digunakan
    $pdf->SetFont('Arial','B',16);
    $ya = 44;
    // mencetak string 
    $pdf->Cell(280,7,'Data Pengujian | Dinas PUBMTR Sumatera Selatan',0,1,'C');
    $pdf->SetFont('Arial','B',12);
    // Memberikan space kebawah agar tidak terlalu rapat
    $pdf->Cell(10,7,'',0,1);
    $pdf->SetFont('Arial','B',10);
    $pdf->Cell(40,6,'NO KTP',1,0);
    $pdf->Cell(40,6,'NAMA',1,0);
    $pdf->Cell(40,6,'EMAIL',1,0);
    $pdf->Cell(30,6,'NO HP',1,0);
    $pdf->Cell(80,6,'JENIS PENGUJIAN',1,0);
    $pdf->Cell(50,6,'TANGGAL DIAJUKAN',1,1);
    $pdf->SetFont('Arial','',10);
    foreach ($data as $row){
        $pdf->Cell(40,6,$row['no_ktp'],1,0);
        $pdf->Cell(40,6,$row['nama'],1,0);
        $pdf->Cell(40,6,$row['email'],1,0);
        $pdf->Cell(30,6,$row['no_hp'],1,0);
        $pdf->Cell(80,6,$row['jenis_pengujian'],1,0);
        $pdf->Cell(50,6,$row['created_at'],1,1);  
    }
    $pdf->Output();
  }
}
