<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Hackaton 2016</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>  
        <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/qrcode.js"></script>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/style.css">
    </head>
    <body>
    <div id="qrcontainercontainer">
        <div id="qrcontainer">
            <div id="qrcode"></div>
        </div>
    </div>
        
        <script type="text/javascript">
            $('#qrcode').qrcode({width: 200, height: 200, text: "<?php echo $qr_code ;?>"});
        </script>
    </body>
</html>
