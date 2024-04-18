<?php
$i=0;
if(count($data)>0)
{
foreach($data as $d)
{
echo '<p><label><input type="radio"  name="address_radio" class="addressRadio" readonly="" value="'.$d['id'].'" id="address_radio" >&nbsp;&nbsp;Address'.++$i.'<div><div ><div><p class="_22O2Xt"><span >'.ucwords($d['name']).'</span><span>&nbsp;&nbsp;&nbsp;</span><span >'.$d['mobile'].'</span></p><span>'.$d['complete_address'].'</span></span></div></div></div></label></p><hr/>';
}
}
else
{
	echo '<p align="center"><b>No address found , please add atleast one address</b></p>';
}
?>