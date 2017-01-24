document.write('\n                                                                                                                                                                                                                                                                                                                                                  
$row = array (
"titulo"      => "Aquele sentimento de verão",
"ano"         => 2015,
"extensao"    => "MKV",
"qualidade"   => "BR-Rip",
"resolucao"   => "1280 x 720",
"tamanho_num" => "1.97",
"tamanho_car" => "Gb",
"duracao"     => "102",
"idioma"      => "Inglês/Portugues/Espanhol",
"legenda"     => "Português/Inglês/Espanhol",
"capa"        => "http://www.osninjas.info/ImgTopicos/LordNinja/AqueleSentimentoVerao/Capa.jpg",
"sinopse"     => "Sasha, uma jovem francesa de 30 anos, morre subitamente na cidade de Berlim, onde vivia com o namorado, Lawrence. Nesse momento de perda, a família e o namorado estão devastados. O trágico evento acaba unindo dois estranhos: o namorado Lawrence e a irmã, Zoé."
);                                                                                                                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                                                                                                                  
    $my_result = '';
    
    $my_result .= '<table width="600" style="margin:0;padding:0;border:none;">';
    $my_result .= '       <tr>';
    $my_result .= '           <th"><img src="images/gerador/informacoes.png"></th>';
    $my_result .= '       </tr>';
    $my_result .= '</table>';
    $my_result .= '<table border="0" style="text-align:center;font-weight:bold;table-layout:fixed;width:600;">';
    $my_result .= '       <tr>';
    $my_result .= '           <td style="width: 5px; height: 430px;" rowspan="7"></td>';
    $my_result .= '           <td style="width: 301px; height: 430px;" rowspan="7"><img src="' . $row['capa'] . '"></td>';
    $my_result .= '           <td style="background-image:url(images/gerador/quadro_fundo.png);border-left:2px solid #041727;border-right:2px solid #75a1c5;border-bottom:2px solid #041727;border-top:2px solid #427fb0;"><font face="Courier New" color="White"><font size="1" color="gold">Título<br></font>' . $row['titulo'] . '</font></td>';
    $my_result .= '           <td style="width: 5px; height: 430px;" rowspan="7"></td>';
    $my_result .= '       </tr>';
    $my_result .= '       <tr>';
    $my_result .= '           <td style="background-image:url(images/gerador/quadro_fundo.png);border-left:2px solid #041727;border-right:2px solid #75a1c5;border-bottom:2px solid #041727;border-top:2px solid #427fb0;"><font face="Courier New" color="White"><font size="1" color="gold">Ano<br></font>' . $row['ano'] . '</font></td>';
    $my_result .= '       </tr>';
    $my_result .= '       <tr>';
    $my_result .= '           <td style="background-image:url(images/gerador/quadro_fundo.png);border-left:2px solid #041727;border-right:2px solid #75a1c5;border-bottom:2px solid #041727;border-top:2px solid #427fb0;"><font face="Courier New" color="White"><font size="1" color="gold">Qualidade<br></font>' . $row['extensao'] . ' - ' . $row['qualidade'] . ' - ' . $row['resolucao'] . '</font></td>';
    $my_result .= '       </tr>';
    $my_result .= '       <tr>';
    $my_result .= '           <td style="background-image:url(images/gerador/quadro_fundo.png);border-left:2px solid #041727;border-right:2px solid #75a1c5;border-bottom:2px solid #041727;border-top:2px solid #427fb0;"><font face="Courier New" color="White"><font size="1" color="gold">Tamanho<br></font>' . $row['tamanho_num'] . ' ' . $row['tamanho_car'] . '</font></td>';
    $my_result .= '       </tr>';
    $my_result .= '       <tr>';
    $my_result .= '           <td style="background-image:url(images/gerador/quadro_fundo.png);border-left:2px solid #041727;border-right:2px solid #75a1c5;border-bottom:2px solid #041727;border-top:2px solid #427fb0;"><font face="Courier New" color="White"><font size="1" color="gold">Duracao<br></font>' . $row['duracao'] . ' min</font></td>';
    $my_result .= '       </tr>';
    $my_result .= '       <tr>';
    $my_result .= '           <td style="background-image:url(images/gerador/quadro_fundo.png);border-left:2px solid #041727;border-right:2px solid #75a1c5;border-bottom:2px solid #041727;border-top:2px solid #427fb0;"><font face="Courier New" color="White"><font size="1" color="gold">Idioma<br></font>' . $row['idioma'] . '</font></td>';
    $my_result .= '       </tr>';
    $my_result .= '       <tr>';
    $my_result .= '           <td style="background-image:url(images/gerador/quadro_fundo.png);border-left:2px solid #041727;border-right:2px solid #75a1c5;border-bottom:2px solid #041727;border-top:2px solid #427fb0;"><font face="Courier New" color="White"><font size="1" color="gold"ç>Legenda<br></font>' . $row['legenda'] . '</font></font></td>';
    $my_result .= '       </tr>';
    $my_result .= '</table>';
    $my_result .= '<br>';
    $my_result .= '<table width="600" style="margin:0;padding:0;border:none;">';
    $my_result .= '       <tr>';
    $my_result .= '           <th><img src="images/gerador/sinopse.png"></th>';
    $my_result .= '       </tr>';
    $my_result .= '</table>';
    $my_result .= '<table table border="0" style="text-align:center;font-weight:bold;table-layout:fixed;width:600;">';
    $my_result .= '       <tr>';
    $my_result .= '           <td style="width: 5px;"></td>';
    $my_result .= '           <td background="images/gerador/quadro_fundo.png" width="100%" style="margin:0;padding-left: 10px; padding-top: 10px;padding-bottom: 10px;padding-right: 10px;border-left: 3px solid #041727;border-right: 3px solid #75a1c5;border-bottom: 3px solid #041727;border-top: 3px solid #427fb0;">';
    $my_result .= '           		 <font face="Courier New" color="White">' . $row['sinopse'] . '</font>';
    $my_result .= '           </td>';
    $my_result .= '           <td style="width: 5px;"></td>';
    $my_result .= '       </tr>';
    $my_result .= '</table>';
                                                                                                                                                                                                                                                                                                                                                  
return $my_result;
');
