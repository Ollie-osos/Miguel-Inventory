<?php
// reference the Dompdf namespace
 use Dompdf\Dompdf;
// instantiate and use the dompdf class
$dompdf = new Dompdf(array('enable_remote' => true));

$posts = get_user_favorites(); 
$count = 0;


		foreach ($posts as $post) {

			$count++;
			$posts_html .= 
			"
			<tr>
			<td class=''>
			<h5 class='count'><span>".$count.".</span></h5>
			<ul>
			<b>".get_the_title($post)."</b>";
			$posts_html.= get_field('creation_date') ? "<li>".get_field('technical_elements',$post)."</li>" : '';
			$posts_html.= get_field('technical_elements') ? "<li>".get_field('technical_elements',$post)."</li>" : '';
			if($_POST['models'] != 'transporteur')
				$posts_html.= get_field('dimension_cm') ? "<li>".get_field('dimension_cm',$post)."</li>" : '' ;
			if($_POST['models'] != 'transporteur')
				$posts_html.= get_field('dimension_cm_frame') ? "<li>".get_field('dimension_cm_frame',$post)."</li>" : '' ;
			$posts_html.= get_field('dimensions_box') ? "<li>".get_field('dimensions_box',$post)."</li>" : '' ;
			if($_POST['models'] != 'transporteur')
				$posts_html.= get_field('weight_kg') ? "<li>".get_field('weight_kg',$post)."</li>" : '' ;
			$posts_html.= get_field('weight_packaged') ? "<li>".get_field('weight_packaged',$post)."</li>" : '' ;
			if($_POST['models'] != 'transporteur')			
				$posts_html.= get_field('edition') ? "<li>".get_field('edition',$post)."</li>" : '' ;
			if($_POST['models'] != 'transporteur')
				$posts_html.= get_field('public_notes') ? "<li>".get_field('public_notes',$post)."</li>" : '' ;
			if($_POST['models'] != 'transporteur')
				$posts_html.= get_field('price_sale_euro') ? "<li>".get_field('price_sale_euro',$post)."</li>" : '' ;
			if($_POST['models'] != 'transporteur')
				$posts_html.= get_field('price_assurance_euro') ? "<li>".get_field('price_assurance_euro',$post)."</li>" : '' ;
			//exception for the transporteur model
			if($_POST['models'] == 'transporteur')
				$posts_html.= get_field('type_of_packaging') ? "<li>".get_field('type_of_packaging',$post)."</li>" : '' ;
			$posts_html.="</ul>
			</td>";

			if($_POST['models'] != 'transporteur')
			$posts_html .= "<td class='image'>
			".get_the_post_thumbnail($post,'medium')."
			</td>";

			$posts_html.="</tr>";
			if($_POST['models'] == 'galerie')
			$posts_html .= "<tr><td colspan='2' class='description'>".get_field('description',$post) ."</td></tr>";

		}


$html = 	"
			<html>
    		<head>
    		<meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
    		 <style>
            /** Define the margins of your page **/
            @page {
                margin: 5px 5px;
                margin-top:250px;
                margin-bottom:30px;
            }

            body { font-family: DejaVu Sans, sans-serif; font-size:10px}

            /** Define the header rules **/
            header {
                position: fixed;
                top: -245px;
                left: 0cm;
                right: 0cm;
            }


            /** Define the footer rules **/
            footer {
                position: fixed; 
                bottom:20px; 
                left: 0cm; 
                right: 0cm;
            }

            .main{
            	margin:25px 25px;
            }

            h2{
            	text-align:center;
            }

            .left{
            float: left;
            width : 50%;
            height : 500px;
            display : inline-block;
            }

            .right{
           	float: right;
            width : 50%;
            height: 500px;
            }

            .image img{
            	margin:20px;
            }

            .count{
            	margin:0px;
            }

           .count span{
           	color:white;
           	background-color:black;
           }
           	
           	.description{
           		font-size:8px;
           	}

           	li{
           		font-size:11px;
           	}
            </style>


    		</head>
    		<body>
			<header>
				<img height='243px' src='".get_site_url()."/wp-content/uploads/2021/03/entête.png'>
			</header>
					<footer>
		<img height='44px' src='".get_site_url()."/wp-content/uploads/2021/03/footer.png'>

		</footer>

				<div class='main'>

		<h2>LISTE D'OEUVRES DE MIGUEL CHEVALIER POUR [INSERT NAME/EVENT] [INSERT LOCATION]</h2>
        <table>                 
		".$posts_html."
		</table>
		</div>
		</body>
			</html>";




$dompdf->loadHtml($html);

// (Optional) Setup the paper size and orientation
$dompdf->setPaper('A4', 'portrait');

// Render the HTML as PDF
$dompdf->render();

// Output the generated PDF to Browser
$dompdf->stream("dompdf_out.pdf", array("Attachment" => false));
?>
