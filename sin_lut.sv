<br><br><br><pre><code>stored_file Object
(
    [fs:stored_file:private] => file_storage Object
        (
            [tempdir:file_storage:private] => /var/www/moodle/temp/hu23/filestorage
            [filesystem:file_storage:private] => file_system_filedir Object
                (
                    [filedir:protected] => /cs/wwwdata/moodles/hu23/filedir
                    [trashdir:protected] => /cs/wwwdata/moodles/hu23/trashdir
                    [dirpermissions:protected] => 1535
                    [filepermissions:protected] => 438
                )

        )

    [file_record:stored_file:private] => stdClass Object
        (
            [id] => 6637531
            [contenthash] => fc9faae5d1058805ccfaffe883abcd66aecc7206
            [pathnamehash] => 6af426ba1b1e307107bc2b233e3c1c23fdc597ba
            [contextid] => 426433
            [component] => mod_assign
            [filearea] => introattachment
            [itemid] => 0
            [filepath] => /
            [filename] => sin_lut.sv
            [userid] => 384679
            [filesize] => 8729
            [mimetype] => text/plain
            [status] => 0
            [source] => sin_lut.sv
            [author] => Rafael Gantz
            [license] => allrightsreserved
            [timecreated] => 1707635953
            [timemodified] => 1707635978
            [sortorder] => 0
            [referencefileid] => 
            [repositoryid] => 
            [reference] => 
            [referencelastsync] => 
        )

    [repository:stored_file:private] => 
    [filesystem:stored_file:private] => file_system_filedir Object
        (
            [filedir:protected] => /cs/wwwdata/moodles/hu23/filedir
            [trashdir:protected] => /cs/wwwdata/moodles/hu23/trashdir
            [dirpermissions:protected] => 1535
            [filepermissions:protected] => 438
        )

)
</code></pre>//----------------------------------------------------------------------------------------------------
// Module name: sin_lut
// Author:      Refael Gantz
// Date:        23.11.2018
// email:       refael.gantz@gmail.com
// Description: This module contains 256 samples of the first quarter of a sinus wave. Output is 8 bit unsigned.
//----------------------------------------------------------------------------------------------------

module sin_lut(
	input logic [7:0]  address,
	output logic [7:0] dout
);

logic [7:0] mem_reg [255:0];

assign dout = mem_reg[address];
  
assign  mem_reg[0]  = 8'd0; 
assign  mem_reg[1]  = 8'd1; 
assign  mem_reg[2]  = 8'd3; 
assign  mem_reg[3]  = 8'd4; 
assign  mem_reg[4]  = 8'd6; 
assign  mem_reg[5]  = 8'd7; 
assign  mem_reg[6]  = 8'd9; 
assign  mem_reg[7]  = 8'd10; 
assign  mem_reg[8]  = 8'd12; 
assign  mem_reg[9]  = 8'd14; 
assign  mem_reg[10] = 8'd15; 
assign  mem_reg[11] = 8'd17; 
assign  mem_reg[12] = 8'd18; 
assign  mem_reg[13] = 8'd20; 
assign  mem_reg[14] = 8'd21; 
assign  mem_reg[15] = 8'd23; 
assign  mem_reg[16] = 8'd25; 
assign  mem_reg[17] = 8'd26; 
assign  mem_reg[18] = 8'd28; 
assign  mem_reg[19] = 8'd29; 
assign  mem_reg[20] = 8'd31; 
assign  mem_reg[21] = 8'd32; 
assign  mem_reg[22] = 8'd34; 
assign  mem_reg[23] = 8'd36; 
assign  mem_reg[24] = 8'd37; 
assign  mem_reg[25] = 8'd39; 
assign  mem_reg[26] = 8'd40; 
assign  mem_reg[27] = 8'd42; 
assign  mem_reg[28] = 8'd43; 
assign  mem_reg[29] = 8'd45; 
assign  mem_reg[30] = 8'd46; 
assign  mem_reg[31] = 8'd48; 
assign  mem_reg[32] = 8'd49; 
assign  mem_reg[33] = 8'd51; 
assign  mem_reg[34] = 8'd53; 
assign  mem_reg[35] = 8'd54; 
assign  mem_reg[36] = 8'd56; 
assign  mem_reg[37] = 8'd57; 
assign  mem_reg[38] = 8'd59; 
assign  mem_reg[39] = 8'd60; 
assign  mem_reg[40] = 8'd62; 
assign  mem_reg[41] = 8'd63; 
assign  mem_reg[42] = 8'd65; 
assign  mem_reg[43] = 8'd66; 
assign  mem_reg[44] = 8'd68; 
assign  mem_reg[45] = 8'd69; 
assign  mem_reg[46] = 8'd71; 
assign  mem_reg[47] = 8'd72; 
assign  mem_reg[48] = 8'd74; 
assign  mem_reg[49] = 8'd75; 
assign  mem_reg[50] = 8'd77; 
assign  mem_reg[51] = 8'd78; 
assign  mem_reg[52] = 8'd80; 
assign  mem_reg[53] = 8'd81; 
assign  mem_reg[54] = 8'd83; 
assign  mem_reg[55] = 8'd84; 
assign  mem_reg[56] = 8'd86; 
assign  mem_reg[57] = 8'd87; 
assign  mem_reg[58] = 8'd89; 
assign  mem_reg[59] = 8'd90; 
assign  mem_reg[60] = 8'd92; 
assign  mem_reg[61] = 8'd93; 
assign  mem_reg[62] = 8'd95; 
assign  mem_reg[63] = 8'd96; 
assign  mem_reg[64] = 8'd97; 
assign  mem_reg[65] = 8'd99; 
assign  mem_reg[66] = 8'd100; 
assign  mem_reg[67] = 8'd102; 
assign  mem_reg[68] = 8'd103; 
assign  mem_reg[69] = 8'd105; 
assign  mem_reg[70] = 8'd106; 
assign  mem_reg[71] = 8'd108; 
assign  mem_reg[72] = 8'd109; 
assign  mem_reg[73] = 8'd110; 
assign  mem_reg[74] = 8'd112; 
assign  mem_reg[75] = 8'd113; 
assign  mem_reg[76] = 8'd115; 
assign  mem_reg[77] = 8'd116; 
assign  mem_reg[78] = 8'd117; 
assign  mem_reg[79] = 8'd119; 
assign  mem_reg[80] = 8'd120; 
assign  mem_reg[81] = 8'd122; 
assign  mem_reg[82] = 8'd123; 
assign  mem_reg[83] = 8'd124; 
assign  mem_reg[84] = 8'd126; 
assign  mem_reg[85] = 8'd127; 
assign  mem_reg[86] = 8'd128; 
assign  mem_reg[87] = 8'd130; 
assign  mem_reg[88] = 8'd131; 
assign  mem_reg[89] = 8'd132; 
assign  mem_reg[90] = 8'd134; 
assign  mem_reg[91] = 8'd135; 
assign  mem_reg[92] = 8'd136; 
assign  mem_reg[93] = 8'd138; 
assign  mem_reg[94] = 8'd139; 
assign  mem_reg[95] = 8'd140; 
assign  mem_reg[96] = 8'd142; 
assign  mem_reg[97] = 8'd143; 
assign  mem_reg[98] = 8'd144; 
assign  mem_reg[99] = 8'd146; 
assign  mem_reg[100]= 8'd147; 
assign  mem_reg[101]= 8'd148; 
assign  mem_reg[102]= 8'd149; 
assign  mem_reg[103]= 8'd151; 
assign  mem_reg[104]= 8'd152; 
assign  mem_reg[105]= 8'd153; 
assign  mem_reg[106]= 8'd154; 
assign  mem_reg[107]= 8'd156; 
assign  mem_reg[108]= 8'd157; 
assign  mem_reg[109]= 8'd158; 
assign  mem_reg[110]= 8'd159; 
assign  mem_reg[111]= 8'd161; 
assign  mem_reg[112]= 8'd162; 
assign  mem_reg[113]= 8'd163; 
assign  mem_reg[114]= 8'd164; 
assign  mem_reg[115]= 8'd165; 
assign  mem_reg[116]= 8'd167; 
assign  mem_reg[117]= 8'd168; 
assign  mem_reg[118]= 8'd169; 
assign  mem_reg[119]= 8'd170; 
assign  mem_reg[120]= 8'd171; 
assign  mem_reg[121]= 8'd172; 
assign  mem_reg[122]= 8'd174; 
assign  mem_reg[123]= 8'd175; 
assign  mem_reg[124]= 8'd176; 
assign  mem_reg[125]= 8'd177; 
assign  mem_reg[126]= 8'd178; 
assign  mem_reg[127]= 8'd179; 
assign  mem_reg[128]= 8'd180; 
assign  mem_reg[129]= 8'd181; 
assign  mem_reg[130]= 8'd183; 
assign  mem_reg[131]= 8'd184; 
assign  mem_reg[132]= 8'd185; 
assign  mem_reg[133]= 8'd186; 
assign  mem_reg[134]= 8'd187; 
assign  mem_reg[135]= 8'd188; 
assign  mem_reg[136]= 8'd189; 
assign  mem_reg[137]= 8'd190; 
assign  mem_reg[138]= 8'd191; 
assign  mem_reg[139]= 8'd192; 
assign  mem_reg[140]= 8'd193; 
assign  mem_reg[141]= 8'd194; 
assign  mem_reg[142]= 8'd195; 
assign  mem_reg[143]= 8'd196; 
assign  mem_reg[144]= 8'd197; 
assign  mem_reg[145]= 8'd198; 
assign  mem_reg[146]= 8'd199; 
assign  mem_reg[147]= 8'd200; 
assign  mem_reg[148]= 8'd201; 
assign  mem_reg[149]= 8'd202; 
assign  mem_reg[150]= 8'd203; 
assign  mem_reg[151]= 8'd204; 
assign  mem_reg[152]= 8'd205; 
assign  mem_reg[153]= 8'd206; 
assign  mem_reg[154]= 8'd207; 
assign  mem_reg[155]= 8'd208; 
assign  mem_reg[156]= 8'd209; 
assign  mem_reg[157]= 8'd209; 
assign  mem_reg[158]= 8'd210; 
assign  mem_reg[159]= 8'd211; 
assign  mem_reg[160]= 8'd212; 
assign  mem_reg[161]= 8'd213; 
assign  mem_reg[162]= 8'd214; 
assign  mem_reg[163]= 8'd215; 
assign  mem_reg[164]= 8'd215; 
assign  mem_reg[165]= 8'd216; 
assign  mem_reg[166]= 8'd217; 
assign  mem_reg[167]= 8'd218; 
assign  mem_reg[168]= 8'd219; 
assign  mem_reg[169]= 8'd220; 
assign  mem_reg[170]= 8'd220; 
assign  mem_reg[171]= 8'd221; 
assign  mem_reg[172]= 8'd222; 
assign  mem_reg[173]= 8'd223; 
assign  mem_reg[174]= 8'd223; 
assign  mem_reg[175]= 8'd224; 
assign  mem_reg[176]= 8'd225; 
assign  mem_reg[177]= 8'd226; 
assign  mem_reg[178]= 8'd226; 
assign  mem_reg[179]= 8'd227; 
assign  mem_reg[180]= 8'd228; 
assign  mem_reg[181]= 8'd228; 
assign  mem_reg[182]= 8'd229; 
assign  mem_reg[183]= 8'd230; 
assign  mem_reg[184]= 8'd230; 
assign  mem_reg[185]= 8'd231; 
assign  mem_reg[186]= 8'd232; 
assign  mem_reg[187]= 8'd232; 
assign  mem_reg[188]= 8'd233; 
assign  mem_reg[189]= 8'd234; 
assign  mem_reg[190]= 8'd234; 
assign  mem_reg[191]= 8'd235; 
assign  mem_reg[192]= 8'd236; 
assign  mem_reg[193]= 8'd236; 
assign  mem_reg[194]= 8'd237; 
assign  mem_reg[195]= 8'd237; 
assign  mem_reg[196]= 8'd238; 
assign  mem_reg[197]= 8'd238; 
assign  mem_reg[198]= 8'd239; 
assign  mem_reg[199]= 8'd239; 
assign  mem_reg[200]= 8'd240; 
assign  mem_reg[201]= 8'd241; 
assign  mem_reg[202]= 8'd241; 
assign  mem_reg[203]= 8'd242; 
assign  mem_reg[204]= 8'd242; 
assign  mem_reg[205]= 8'd243; 
assign  mem_reg[206]= 8'd243; 
assign  mem_reg[207]= 8'd243; 
assign  mem_reg[208]= 8'd244; 
assign  mem_reg[209]= 8'd244; 
assign  mem_reg[210]= 8'd245; 
assign  mem_reg[211]= 8'd245; 
assign  mem_reg[212]= 8'd246; 
assign  mem_reg[213]= 8'd246; 
assign  mem_reg[214]= 8'd246; 
assign  mem_reg[215]= 8'd247; 
assign  mem_reg[216]= 8'd247; 
assign  mem_reg[217]= 8'd248; 
assign  mem_reg[218]= 8'd248; 
assign  mem_reg[219]= 8'd248; 
assign  mem_reg[220]= 8'd249; 
assign  mem_reg[221]= 8'd249; 
assign  mem_reg[222]= 8'd249; 
assign  mem_reg[223]= 8'd250; 
assign  mem_reg[224]= 8'd250; 
assign  mem_reg[225]= 8'd250; 
assign  mem_reg[226]= 8'd250; 
assign  mem_reg[227]= 8'd251; 
assign  mem_reg[228]= 8'd251; 
assign  mem_reg[229]= 8'd251; 
assign  mem_reg[230]= 8'd251; 
assign  mem_reg[231]= 8'd252; 
assign  mem_reg[232]= 8'd252; 
assign  mem_reg[233]= 8'd252; 
assign  mem_reg[234]= 8'd252; 
assign  mem_reg[235]= 8'd253; 
assign  mem_reg[236]= 8'd253; 
assign  mem_reg[237]= 8'd253; 
assign  mem_reg[238]= 8'd253; 
assign  mem_reg[239]= 8'd253; 
assign  mem_reg[240]= 8'd253; 
assign  mem_reg[241]= 8'd254; 
assign  mem_reg[242]= 8'd254; 
assign  mem_reg[243]= 8'd254; 
assign  mem_reg[244]= 8'd254; 
assign  mem_reg[245]= 8'd254; 
assign  mem_reg[246]= 8'd254; 
assign  mem_reg[247]= 8'd254; 
assign  mem_reg[248]= 8'd254; 
assign  mem_reg[249]= 8'd254; 
assign  mem_reg[250]= 8'd254; 
assign  mem_reg[251]= 8'd254; 
assign  mem_reg[252]= 8'd254; 
assign  mem_reg[253]= 8'd254; 
assign  mem_reg[254]= 8'd254; 
assign  mem_reg[255]= 8'd255;

endmodule 

