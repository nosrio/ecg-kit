%% (Internal) Constants for the HES format
% 
% 
% See also read_HES_format, read_ECG
% 
% Author: Mariano Llamedo Soria (llamedom at {electron.frba.utn.edu.ar; unizar.es}
% Version: 0.1 beta
% Birthdate: 29/05/2014
% Last update: 29/05/2014
% Copyright 2008-2015
% 

cLead_description_table = { ...
                        'Unspecified lead','MDC_ECG_LEAD_CONFIG'; ...
                        'I','Lead I MDC_ECG_LEAD_I'; ...
                        'II','Lead II MDC_ECG_LEAD_II'; ...
                        'V1','V1 MDC_ECG_LEAD_V1'; ...
                        'V2','V2 MDC_ECG_LEAD_V2'; ...
                        'V3','V3 MDC_ECG_LEAD_V3'; ...
                        'V4','V4 MDC_ECG_LEAD_V4'; ...
                        'V5','V5 MDC_ECG_LEAD_V5'; ...
                        'V6','V6 MDC_ECG_LEAD_V6'; ...
                        'V7','V7 MDC_ECG_LEAD_V7'; ...
                        'V2Ra','V2R MDC_ECG_LEAD_V2R'; ...
                        'V3R','V3R MDC_ECG_LEAD_V3R'; ...
                        'V4R','V4R MDC_ECG_LEAD_V4R'; ...
                        'V5R','V5R MDC_ECG_LEAD_V5R'; ...
                        'V6R','V6R MDC_ECG_LEAD_V6R'; ...
                        'V7R','V7R MDC_ECG_LEAD_V7R'; ...
                        'X','Xb MDC_ECG_LEAD_X'; ...
                        'Y','Yb MDC_ECG_LEAD_Y'; ...
                        'Z','Zb MDC_ECG_LEAD_Z'; ...
                        'CC5c','CC5, per V5 and V5R placement MDC_ECG_LEAD_CC5'; ...
                        'CM5','CM5, per V5 placement MDC_ECG_LEAD_CM5'; ...
                        'LA','Left Arm MDC_ECG_LEAD_LA'; ...
                        'RA','Right Arm MDC_ECG_LEAD_RA'; ...
                        'LL','Left Leg MDC_ECG_LEAD_LL'; ...
                        'fId','fI MDC_ECG_LEAD_fI'; ...
                        'fE','fE MDC_ECG_LEAD_fE'; ...
                        'fC','fC MDC_ECG_LEAD_fC'; ...
                        'fA','fA MDC_ECG_LEAD_fA'; ...
                        'fM','fM MDC_ECG_LEAD_fM'; ...
                        'fF','fF MDC_ECG_LEAD_fF'; ...
                        'fH','fH MDC_ECG_LEAD_fH'; ...
                        'dI','derived lead I MDC_ECG_LEAD_dI'; ...
                        'dII','derived lead II MDC_ECG_LEAD_dII'; ...
                        'dV1','derived lead V1 MDC_ECG_LEAD_dV1'; ...
                        'dV2','derived lead V2 MDC_ECG_LEAD_dV2'; ...
                        'dV3','derived lead V3 MDC_ECG_LEAD_dV3'; ...
                        'dV4','derived lead V4 MDC_ECG_LEAD_dV4'; ...
                        'dV5','derived lead V5 MDC_ECG_LEAD_dV5'; ...
                        'dV6','derived lead V6 MDC_ECG_LEAD_dV6'; ...
                        'dV7','derived lead V7'; ...
                        'dV2R','derived lead V2R'; ...
                        'dV3R','derived lead V3R'; ...
                        'dV4R','derived lead V4R'; ...
                        'dV5R','derived lead V5R'; ...
                        'dV6R','derived lead V6R'; ...
                        'dV7R','derived lead V7R'; ...
                        'dX','derived lead X'; ...
                        'dY','derived lead Y'; ...
                        'dZ','derived lead Z'; ...
                        'dCC5','derived lead CC5'; ...
                        'dCM5','derived lead CM5'; ...
                        'dLA','derived lead LA'; ...
                        'dRA','derived lead RA'; ...
                        'dLL','derived lead LL'; ...
                        'dfI','derived lead fI'; ...
                        'dfE','derived lead fE'; ...
                        'dfC','derived lead fC'; ...
                        'dfA','derived lead fA'; ...
                        'dfM','derived lead fM'; ...
                        'dfF','derived lead fF'; ...
                        'dfH','derived lead fH'; ...
                        'III','Lead III MDC_ECG_LEAD_III'; ...
                        'aVR','aVR, augmented voltage, right MDC_ECG_LEAD_AVR'; ...
                        'aVL','aVL, augmented voltage, left MDC_ECG_LEAD_AVL'; ...
                        'aVF','aVF, augmented voltage, foot MDC_ECG_LEAD_AVF'; ...
                        'aVRneg','aVRneg MDC_ECG_LEAD_AVRneg'; ...
                        'V8','V8 MDC_ECG_LEAD_V8'; ...
                        'V9','V9 MDC_ECG_LEAD_V9'; ...
                        'V8R','V8R MDC_ECG_LEAD_V8R'; ...
                        'V9R','V9R MDC_ECG_LEAD_V9R'; ...
                        'D','D (Nehb � Dorsal) MDC_ECG_LEAD_D'; ...
                        'A','A (Nehb � Anterior) MDC_ECG_LEAD_A'; ...
                        'J','J (Nehb � Inferior) MDC_ECG_LEAD_J'; ...
                        'Defib','Defibrillator lead: anterior-lateral MDC_ECG_LEAD_DEFIB'; ...
                        'Extern','External pacing lead: anterior-posterior MDC_ECG_LEAD_EXTERN'; ...
                        'A1','A1 (Auxiliary unipolar lead #1) MDC_ECG_LEAD_A1'; ...
                        'A2','A2 (Auxiliary unipolar lead #2) MDC_ECG_LEAD_A2'; ...
                        'A3','A3 (Auxiliary unipolar lead #3) MDC_ECG_LEAD_A3'; ...
                        'A4','A4 (Auxiliary unipolar lead #4) MDC_ECG_LEAD_A4'; ...
                        'dV8','derived lead V8'; ...
                        'dV9','derived lead V9'; ...
                        'dV8R','derived lead V8R'; ...
                        'dV9R','derived lead V9R'; ...
                        'dD','derived lead D (Nehb � Dorsal)'; ...
                        'dA','derived lead A (Nehb � Anterior)'; ...
                        'dJ','derived lead J (Nehb � Inferior)'; ...
                        'Chest','Chest lead MDC_ECG_LEAD_C'; ...
                        'V','Precordial lead MDC_ECG_LEAD_V'; ...
                        'VR','VR, nonaugmented voltage, vector of RA MDC_ECG_LEAD_VR'; ...
                        'VL','VL, nonaugmented voltage, vector of LA MDC_ECG_LEAD_VL'; ...
                        'VF','VF, nonaugmented voltage, vector of LL MDC_ECG_LEAD_VF'; ...
                        'MCL','Modified chest lead (left arm indifferent) MDC_ECG_LEAD_MCL'; ...
                        'MCL1','MCL, per V1 placement MDC_ECG_LEAD_MCL1'; ...
                        'MCL2','MCL, per V2 placement MDC_ECG_LEAD_MCL2'; ...
                        'MCL3','MCL, per V3 placement MDC_ECG_LEAD_MCL3'; ...
                        'MCL4','MCL, per V4 placement MDC_ECG_LEAD_MCL4'; ...
                        'MCL5','MCL, per V5 placement MDC_ECG_LEAD_MCL5'; ...
                        'MCL6','MCL, per V6 placement MDC_ECG_LEAD_MCL6'; ...
                        'CC','Chest lead (symmetric placement) MDC_ECG_LEAD_CC'; ...
                        'CC1','CC1, per V1 and V1R placement MDC_ECG_LEAD_CC1'; ...
                        'CC2','CC2, per V2 and V2R placement MDC_ECG_LEAD_CC2'; ...
                        'CC3','CC3, per V3 and V3R placement MDC_ECG_LEAD_CC3'; ...
                        'CC4','CC4, per V4 and V4R placement MDC_ECG_LEAD_CC4'; ...
                        'CC6','CC6, per V6 and V6R placement MDC_ECG_LEAD_CC6'; ...
                        'CC7','CC7, per V7 and V8R placement MDC_ECG_LEAD_CC7'; ...
                        'CM','Chest-manubrium MDC_ECG_LEAD_CM'; ...
                        'CM1','CM1, per V1 placement MDC_ECG_LEAD_CM1'; ...
                        'CM2','CM2, per V2 placement MDC_ECG_LEAD_CM2'; ...
                        'CM3','CM3, per V3 placement MDC_ECG_LEAD_CM3'; ...
                        'CM4','CM4, per V4 placement MDC_ECG_LEAD_CM4'; ...
                        'CM6','CM6, per V6 placement MDC_ECG_LEAD_CM6'; ...
                        'dIII','derived lead III MDC_ECG_LEAD_dIII'; ...
                        'daVR','derived lead aVR MDC_ECG_LEAD_daVR'; ...
                        'daVL','derived lead aVL MDC_ECG_LEAD_daVL'; ...
                        'daVF','derived lead aVF MDC_ECG_LEAD_daVF'; ...
                        'daVRneg','derived lead aVRneg'; ...
                        'dChest','derived lead Chest'; ...
                        'dV','derived lead V'; ...
                        'dVR','derived lead VR'; ...
                        'dVL','derived lead VL'; ...
                        'dVF','derived lead VF'; ...
                        'CM7','CM7, per V7 placement MDC_ECG_LEAD_CM7'; ...
                        'CH5','CH5 MDC_ECG_LEAD_CH5'; ...
                        'CS5','negative: right infraclavicular fossa MDC_ECG_LEAD_CS5'; ...
                        'CB5','negative: low right scapula MDC_ECG_LEAD_CB5'; ...
                        'CR5','CR5 MDC_ECG_LEAD_CR5'; ...
                        'ML','ML, modified limb lead, ~ Lead II MDC_ECG_LEAD_ML'; ...
                        'AB1','AB1 (auxiliary bipolar lead #1) MDC_ECG_LEAD_AB1'; ...
                        'AB2','AB2 (auxiliary bipolar lead #2) MDC_ECG_LEAD_AB2'; ...
                        'AB3','AB3 (auxiliary bipolar lead #3) MDC_ECG_LEAD_AB3'; ...
                        'AB4','AB4 (auxiliary bipolar lead #4) MDC_ECG_LEAD_AB4'; ...
                        'ES','EASI� ES+C46 MDC_ECG_LEAD_ES'; ...
                        'AS','EASI AS MDC_ECG_LEAD_AS'; ...
                        'AI','EASI AI MDC_ECG_LEAD_AI'; ...
                        'S','EASI upper sternum lead MDC_ECG_LEAD_S'; ...
                        'dDefib','derived lead Defib: Defibrillator lead:'; ...
                        'dExtern','derived lead Extern: External pacing'; ...
                        'dA1','derived lead A1 (Auxiliary unipolar lead #1)'; ...
                        'dA2','derived lead A2 (Auxiliary unipolar lead #2)'; ...
                        'dA3','derived lead A3 (Auxiliary unipolar lead #3)'; ...
                        'dA4','derived lead A4 (Auxiliary unipolar lead #4)'; ...
                        'dMCL1','derived lead MCL1: MCL, per V1 placement'; ...
                        'dMCL2','derived lead MCL2: MCL, per V2 placement'; ...
                        'dMCL3','derived lead MCL3: MCL, per V3 placement'; ...
                        'dMCL4','derived lead MCL4: MCL, per V4 placement'; ...
                        'dMCL5','derived lead MCL5: MCL, per V5 placement'; ...
                        'dMCL6','derived lead MCL6: MCL, per V6 placement'; ...
                        'RL','right leg MDC_ECG_LEAD_RL'; ...
                        'CV5RL','Canine, fifth right intercostal space near the edge of the sternum at the most curved part of the costal cartilageMDC_ECG_LEAD_CV5RL'; ...
                        'CV6LL','Canine, sixth left intercostal space near the edge of the sternum at the most curved part of the costal cartilage MDC_ECG_LEAD_CV6LL'; ...
                        'CV6LU','Canine, sixth left intercostal space at the costochondral junction MDC_ECG_LEAD_CV6LU'; ...
                        'V10','Canine, over dorsal spinous process of the seventh thoracic vertebra MDC_ECG_LEAD_V10'; ...
                        'dMCL','derived lead MCL: Modified chest lead (left arm indifferent)'; ...
                        'dCC','derived lead CC: Chest lead (symmetric placement)'; ...
                        'dCC1','derived lead CC1, per V1 and V1R placement'; ...
                        'dCC2','derived lead CC2, per V2 and V2R placement'; ...
                        'dCC3','derived lead CC3, per V3 and V3R placement'; ...
                        'dCC4','derived lead CC4, per V4 and V4R placement'; ...
                        'dCC6','derived lead CC6, per V6 and V6R placement'; ...
                        'dCC7','derived lead CC7, per V7 and V8R placement'; ...
                        'dCM','derived lead CM Chest-manubrium'; ...
                        'dCM1','derived lead CM1, per V1 placement'; ...
                        'dCM2','derived lead CM2, per V2 placement'; ...
                        'dCM3','derived lead CM3, per V3 placement'; ...
                        'dCM4','derived lead CM4, per V4 placement'; ...
                        'dCM6','derived lead CM6, per V6 placement'; ...
                        'dCM7','derived lead CM7, per V7 placement'; ...
                        'dCH5','derived lead CH5'; ...
                        'dCS5','derived lead CS5: negative: right infraclavicular fossa'; ...
                        'dCB5','derived lead CB5: negative: low right scapula'; ...
                        'dCR5','derived lead CR5'; ...
                        'dML','derived lead ML, modified limb lead, ~ Lead II'; ...
                        'dAB1','derived lead AB1 (auxiliary bipolar lead #1)'; ...
                        'dAB2','derived lead AB2 (auxiliary bipolar lead #2)'; ...
                        'dAB3','derived lead AB3 (auxiliary bipolar lead #3)'; ...
                        'dAB4','derived lead AB4 (auxiliary bipolar lead #4)'; ...
                        'dES','derived lead ES: EASI� ES'; ...
                        'dAS','derived lead AS: EASI AS'; ...
                        'dAI','derived lead AI: EASI AI'; ...
                        'dS','derived lead S: EASI upper sternum lead'; ...
                        'dRL','derived lead RL: right leg'; ...
                        'dCV5RL','derived lead CV5RL: Canine, fifth right intercostal space near the edge of the sternum at the most curved part of the costal cartilage'; ...
                        'dCV6LL','derived lead CV6LL: Canine, sixth left intercostal space near the edge of the sternum at the most curved part of the costal cartilage'; ...
                        'dCV6LU','derived lead CV6LU: Canine, sixth left intercostal space at the costochondral junction'; ...
                        'dV10','derived lead V10: Canine, over dorsal spinous process of the seventh thoracic vertebra'; ...
                };

Lead_description_idx = (0:size(cLead_description_table,1)-1)';
