<?php
echo '<ul class="nav nav-stacked" id="sidebar">';
echo '  <li>';
echo '      <div class="seachByListTitle"><b>Recent Searches</b></div>';
echo '      <ul class="searchByList">';
echo '          <li class="refineHover">Boston, MA</li>';
echo '          <li class="refineHover">Computer Networking</li>';
echo '          <li class="refineHover">Wentworth</li>';
echo '          <li class="refineHover">Art</li>';
echo '      </ul>';
echo '  </li>';
echo '  <li>';
echo '      <div class="seachByListTitle"><b>Search by Location</b></div>';
echo '      <div class="btn-group" data-toggle="buttons" >';
echo '        <label class="btn btn-primary btn-s btn-block btn-refine">';
echo '          <input type="checkbox" checked autocomplete="off"> Boston, MA';
echo '        </label><br>';
echo '        <label class="btn btn-primary btn-s btn-block btn-refine">';
echo '          <input type="checkbox" autocomplete="off"> Conneticut';
echo '        </label><br>';
echo '        <label class="btn btn-primary btn-s btn-block btn-refine">';
echo '          <input type="checkbox" autocomplete="off"> Waltham';
echo '        </label><br>';
echo '        <label class="btn btn-primary btn-s btn-block btn-refine">';
echo '          <input type="checkbox" autocomplete="off"> 02115';
echo '        </label><br>';
echo '      </div>';
echo '  </li>';
echo '  <li>';
echo '      <div class="seachByListTitle"><b>Search by Majors</b></div>';
echo '        <form action="" class="formRefineCheck">';
echo '        <input type="checkbox" name="Population" value="<5000" id="less5k"> <a href="#">Education</a><br>';
echo '        <input type="checkbox" name="Population" value="5-10" id="5kto10k"> Engineering<br>';
echo '        <input type="checkbox" name="Population" value="10-20" id="10to20k"> Humanities/Fine Arts<br>';
echo '        <input type="checkbox" name="Population" value="+20" id="plus20k"> Computer Science<br>';
echo '      </form>';
echo '  </li>';
echo '  <li>';
echo '      <div class="seachByListTitle"><b>Search by Population</b></div>';
echo '      <form action="" class="formRefineCheck">';
echo '            <input type="checkbox" name="Population" value="<5000" id="less5k"> less than 5,000<br>';
echo '            <input type="checkbox" name="Population" value="5-10" id="5kto10k"> 5,000-10,000<br>';
echo '            <input type="checkbox" name="Population" value="10-20" id="10to20k"> 10,001-20,000<br>';
echo '            <input type="checkbox" name="Population" value="+20" id="plus20k"> +20,001<br>';
echo '      </form>';
echo '  </li>';
echo '  <li><hr></li>';
echo '  <li align="center"><button type="button" id= "refineSubmit"class="btn btn-primary btn-sm">Submit</button></li>';
echo '</ul>';

?>