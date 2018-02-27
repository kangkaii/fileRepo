delete FROM boot.t_clob_content where id in(SELECT CONTENT_CLOB_ID FROM t_product_version_mapping where PRODUCT_ID in('205416831202947072',
'210080684827901952',
'210083428594794496',
'',
''));
delete FROM boot.t_clob_content where id in(SELECT STRUCT_CLOB_ID FROM t_product_version_mapping where PRODUCT_ID in('205416831202947072',
'210080684827901952',
'210083428594794496',
'',
''));
delete FROM boot.t_product_model where PRODUCT_ID in('205416831202947072',
'210080684827901952',
'210083428594794496',
'',
'');
delete FROM t_product_version_mapping where PRODUCT_ID in('205416831202947072',
'210080684827901952',
'210083428594794496',
'',
'');



delete FROM boot.t_clob_content where id in('205763307280928769');
delete FROM boot.t_product_role where id in('205763307283775488');

delete FROM boot.t_clob_content where content not like'<role%';
delete FROM boot.t_product_model;
delete FROM t_product_version_mapping;

'205416831202947072',
'205418898836623360',
'205418943685058560',
'205418984472236032',
'205419031350476800'

