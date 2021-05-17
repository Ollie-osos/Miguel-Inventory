SELECT 
t1.`title`,
t2.`field_oeuvre_code_value`, 
t2.`field_oeuvre_realisee_value`,
t2.`field_oeuvre_description_value`,
t2.`field_oeuvre_dimensions_value`,
t2.`field_oeuvres_elem_techniques_value`,
t2.`field_oeuvre_edition_value`,
t2.`field_oeuvre_cout_prod_value`,
t2.`field_oeuvre_val_assurance_value`,
t2.`field_oeuvre_prix_vente_value`,
t2.`field_oeuvre_notes_value`,
t2.`field_oeuvre_memo_value`,
t2.`field_oeuvre_emplacement_value`,
t2.`field_oeuvre_collection_value`,
t2.`field_oeuvre_cout_prod_dol_value`,
t2.`field_oeuvre_val_assurance_dol_value`,
t2.`field_oeuvre_prix_vente_dol_value`,
t2.`field_oeuvre_publiable_value`,
t2.`field_oeuvres_notice_value`,
t2.`field_oeuvres_legende_value`,
t2.`field_oeuvres_dim_feet_value`,
t2.`field_sous_titre_value`,
t2.`field_oeuvre_date_value`,
t2.`field_courtesy_value`,
t7.`field_oeuvre_adresse_web_url`,
(SELECT `node`.`title`FROM `node` WHERE `node`.`nid` = t2.`field_oeuvre_categorie_nid`) as category,
(SELECT `node`.`title`FROM `node` WHERE `node`.`nid` = t2.`field_oeuvre_localisation_nid`) as localisation,
(SELECT `node`.`title`FROM `node` WHERE `node`.`nid` = t2.`field_oeuvre_logiciel_nid`) as logicel,
(SELECT `node`.`title`FROM `node` WHERE `node`.`nid` = t2.`field_oeuvre_serie_nid`) as series,
GROUP_CONCAT(t4.`filepath`) as "gallery_images",
GROUP_CONCAT(t9.`filepath`) as "featured_image",
GROUP_CONCAT(t11.`filepath`) as "documents"
 FROM `node` t1 
 LEFT JOIN `content_type_oeuvre` t2 ON t1.`nid` = t2.`nid`
 LEFT JOIN `content_field_oeuvre_images` t3 ON t1.`nid` = t3.`nid` 
 LEFT JOIN `content_field_files_thumb` t8 ON t1.`nid` = t8.`nid` 
 LEFT JOIN `content_field_oeuvre_docs` t10 ON t1.`nid` = t10.`nid` 
 LEFT JOIN `files` t4 ON t3.`field_oeuvre_images_fid` = t4.`fid`
 LEFT JOIN `files` t9 ON t8.`field_files_thumb_fid` = t9.`fid`
 LEFT JOIN `files` t11 ON t10.`field_oeuvre_docs_fid` = t11.`fid` 
 LEFT JOIN `content_field_oeuvre_adresse_web` t7 ON t1.`nid` = t7.`nid` 
 WHERE t1.`type` = 'oeuvre' 
 GROUP BY 
t1.`title`,
t2.`field_oeuvre_code_value`, 
t2.`field_oeuvre_realisee_value`,
t2.`field_oeuvre_description_value`,
t2.`field_oeuvre_dimensions_value`,
t2.`field_oeuvres_elem_techniques_value`,
t2.`field_oeuvre_edition_value`,
t2.`field_oeuvre_cout_prod_value`,
t2.`field_oeuvre_val_assurance_value`,
t2.`field_oeuvre_prix_vente_value`,
t2.`field_oeuvre_notes_value`,
t2.`field_oeuvre_memo_value`,
t2.`field_oeuvre_emplacement_value`,
t2.`field_oeuvre_collection_value`,
t2.`field_oeuvre_cout_prod_dol_value`,
t2.`field_oeuvre_val_assurance_dol_value`,
t2.`field_oeuvre_prix_vente_dol_value`,
t2.`field_oeuvre_publiable_value`,
t2.`field_oeuvres_notice_value`,
t2.`field_oeuvres_legende_value`,
t2.`field_oeuvres_dim_feet_value`,
t2.`field_sous_titre_value`,
t2.`field_oeuvre_date_value`,
t2.`field_courtesy_value`,
t7.`field_oeuvre_adresse_web_url`,
category,
localisation,
logicel,
series
