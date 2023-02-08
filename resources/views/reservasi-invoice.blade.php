<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compotible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Booking Invoice</title>
    </head>
    <style>
        body {
            font-family: Arial, Helvetice, sans-serif;
            line-height: 24px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table td {
            vertical-align: top;
        }
        .header h1 {
            font-size: xx-large;
        }
        .nota {
            margin-top: 20px;
        }
        .nota th,
        .nota td {
            padding: 10px;
            border-bottom: 1px solid #cccccc;
            text-align: center;
        }
        .nota thead tr {
            background-color: #dddddd;
        }
    </style>
    <body>
        <table class="header">
            <tr>
                <td>
                    <h1>Booking Invoice</h1>
                </td>
                <td style="text-align: right">
                <img src="{{ public_path('images/logo.jpg') }}" width="85">
                <h2 style="margin: 0;">{{ config('app.name') }}</h2>
                <p>
                    Jl.Raya Pangandaran, Kabupaten Pangandaran<br />
                    Tlp. (0256) 666 777
                </p>
                </td>
            </tr>
        </table>
        <!-- ./header-->
        <table>
            <tr>
                <td>
                    <h3>Nomor Reg. {{ $row->id }}</h3>
                    <p>
                        Dibuat Tanggal : {{ date('d/m/Y H:i:s', strtotime($row->created_at) ) }} <br />
                        Check IN : {{ $row->tgl_checkin }}<br />
                        Check OUT : {{ $row->tgl_checkout }}<br />
                        Nama Tamu : <strong> {{ $row->nama_tamu  }} </strong> <br />
                    </p>
                </td>
                <td style="text-align: right">
                <h4>Pemesanan</h4>
                Nama : {{ $row->nama_pemesan }} <br />
                Email : {{ $row->email_pemesan }} <br />
                No. Hp : {{ $row->no_hp }} <br />
            </td>
            </tr>
        </table>
        <!-- .Register -->

        <table class="nota">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Tipe Kamar</th>
                    <th>JML</th>
                    <th>Harga Satuan</th>
                    <th>Total Harga</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>{{ $kamar->nama_kamar }}</td>
                    <td>{{ $row->jum_kamar_dipesan }}</td>
                    <td>Rp. {{ $kamar->harga_kamar }}</td>
                    <td>Rp. {{ $row->total }}</td>
                </tr>
            </tbody>
        </table>
        <!-- ./nota -->
        <p>
            <small><i>Terimakasih telah melakukan reservasi dihotel kami</i></small>
        </p>
    </body>
    </html>