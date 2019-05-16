<?php
if(isset($_POST['submit']))
{
        $distance=$_POST['dist'];
        $kmtomile=(1/1.609)*$distance;
        $miletokm=(1.609)*$distance;
        if($_POST['convert']=1)
        {
                   $result=$kmtomile;
        }
        if($_POST['convert']=2)
        {
                   $result=$miletokm;
        }

}
?>

<html>
<head>
<title>
Disatnce Calculator
</title>
</head>
<body>
<h1>Distance Calculator </h1>
<form method='post'>
<br>Distance = <input type='text' name='dist'>
<br>kmtomile = <input type ='radio' name='convert' value="1">
<br>miletokm = <input type ='radio' name='convert' value="2">
<br>result = <input type ='text' name='result' value="<?php echo $result; ?>">
<br><input type='submit' name='submit' value='Convert'>
</form>
</body>
</html>
