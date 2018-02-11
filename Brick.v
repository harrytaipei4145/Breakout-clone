`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:52:11 12/23/2015 
// Design Name: 
// Module Name:    Xmas 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Brick(input reset,output hsync,output vsync,output reg red,output reg blue,output reg green,input clk,input kdata,input kclk,input BTN_NORTH);

wire [19:0]g1;
wire [19:0]g2;
wire [19:0]g3;
wire [19:0]g4;
wire [19:0]g5;
wire [19:0]g6;
wire [19:0]g7;
wire [19:0]g8;
wire [19:0]g9;
wire [19:0]g10;
wire [19:0]g11;
wire [19:0]g12;
wire [19:0]g13;
wire [19:0]g14;
wire [19:0]g15;
wire [19:0]g16;
wire [19:0]g17;
wire [19:0]g18;
wire [19:0]g19;
wire [19:0]g20;


wire [19:0]a1;
wire [19:0]a2;
wire [19:0]a3;
wire [19:0]a4;
wire [19:0]a5;
wire [19:0]a6;
wire [19:0]a7;
wire [19:0]a8;
wire [19:0]a9;
wire [19:0]a10;
wire [19:0]a11;
wire [19:0]a12;
wire [19:0]a13;
wire [19:0]a14;
wire [19:0]a15;
wire [19:0]a16;
wire [19:0]a17;
wire [19:0]a18;
wire [19:0]a19;
wire [19:0]a20;

wire [19:0]m1;
wire [19:0]m2;
wire [19:0]m3;
wire [19:0]m4;
wire [19:0]m5;
wire [19:0]m6;
wire [19:0]m7;
wire [19:0]m8;
wire [19:0]m9;
wire [19:0]m10;
wire [19:0]m11;
wire [19:0]m12;
wire [19:0]m13;
wire [19:0]m14;
wire [19:0]m15;
wire [19:0]m16;
wire [19:0]m17;
wire [19:0]m18;
wire [19:0]m19;
wire [19:0]m20;

wire [19:0]e1;
wire [19:0]e2;
wire [19:0]e3;
wire [19:0]e4;
wire [19:0]e5;
wire [19:0]e6;
wire [19:0]e7;
wire [19:0]e8;
wire [19:0]e9;
wire [19:0]e10;
wire [19:0]e11;
wire [19:0]e12;
wire [19:0]e13;
wire [19:0]e14;
wire [19:0]e15;
wire [19:0]e16;
wire [19:0]e17;
wire [19:0]e18;
wire [19:0]e19;
wire [19:0]e20;

wire [19:0]o1;
wire [19:0]o2;
wire [19:0]o3;
wire [19:0]o4;
wire [19:0]o5;
wire [19:0]o6;
wire [19:0]o7;
wire [19:0]o8;
wire [19:0]o9;
wire [19:0]o10;
wire [19:0]o11;
wire [19:0]o12;
wire [19:0]o13;
wire [19:0]o14;
wire [19:0]o15;
wire [19:0]o16;
wire [19:0]o17;
wire [19:0]o18;
wire [19:0]o19;
wire [19:0]o20;

wire [19:0]v1;
wire [19:0]v2;
wire [19:0]v3;
wire [19:0]v4;
wire [19:0]v5;
wire [19:0]v6;
wire [19:0]v7;
wire [19:0]v8;
wire [19:0]v9;
wire [19:0]v10;
wire [19:0]v11;
wire [19:0]v12;
wire [19:0]v13;
wire [19:0]v14;
wire [19:0]v15;
wire [19:0]v16;
wire [19:0]v17;
wire [19:0]v18;
wire [19:0]v19;
wire [19:0]v20;

wire [19:0]r1;
wire [19:0]r2;
wire [19:0]r3;
wire [19:0]r4;
wire [19:0]r5;
wire [19:0]r6;
wire [19:0]r7;
wire [19:0]r8;
wire [19:0]r9;
wire [19:0]r10;
wire [19:0]r11;
wire [19:0]r12;
wire [19:0]r13;
wire [19:0]r14;
wire [19:0]r15;
wire [19:0]r16;
wire [19:0]r17;
wire [19:0]r18;
wire [19:0]r19;
wire [19:0]r20;

reg G;
reg A;
reg M;
reg E;
reg O;
reg V;
reg R;
reg n_state,c_state;
reg [21:0]key_reg;
reg [3:0]key_count;
reg [7:0]key_data;
wire check;
reg [15:0]col,row;
wire visible,wall;
wire black_rec;
reg [50:0]counter,black_count,black_way;
reg c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38,c39,c40;
wire rec1,rec2,rec3,rec4,rec5,rec6,rec7,rec8,rec9,rec10;
wire rec11,rec12,rec13,rec14,rec15,rec16,rec17,rec18,rec19,rec20;
wire rec21,rec22,rec23,rec24,rec25,rec26,rec27,rec28,rec29,rec30;
wire rec31,rec32,rec33,rec34,rec35,rec36,rec37,rec38,rec39,rec40;
wire yellow;
reg signed[25:0]yellow_way;
reg check1;
reg [50:0]cou1,cou2,cou3;
reg [15:0]left,left2;
reg[50:0] coun;
reg fuck;
reg [50:0]ct;
reg leftup;
reg rightup;
reg leftdown;
reg rightdown;
reg signed[15:0] centerx;
reg[15:0] centery;
reg stop;
reg over;


assign ball= (col-centerx-left2)*(col-centerx-left2)+(row-centery)*(row-centery)<625;
assign hsync  =~((col>=919) & (col<1039));
assign vsync  =~((row>=659) & (row<665));
assign wall  =((col>=104) & (col<904) & (row>=23) & (row<623));//white
assign visible  =((col>=144) & (col<864) & (row>=63) & (row<623));//blue
assign check=key_reg[1]^key_reg[2]^key_reg[3]^key_reg[4]^key_reg[5]^key_reg[6]^key_reg[7]^key_reg[8]^key_reg[9];
assign black_rec=((col >=613-black_count) & (col <863-black_count) & (row >=403) & (row < 423));
assign rec1=((col>=259*(1-c1)) & (col<299*(1-c1)) & (row>=133*(1-c1)) & (row<173)*(1-c1));
assign rec2=((col>=309*(1-c2)) & (col<349*(1-c2)) & (row>=133*(1-c2)) & (row<173)*(1-c2));
assign rec3=((col>=359*(1-c3)) & (col<399*(1-c3)) & (row>=133*(1-c3)) & (row<173)*(1-c3));
assign rec4=((col>=409*(1-c4)) & (col<449*(1-c4)) & (row>=133*(1-c4)) & (row<173)*(1-c4));
assign rec5=((col>=459*(1-c5)) & (col<499*(1-c5)) & (row>=133*(1-c5)) & (row<173)*(1-c5));
assign rec6=((col>=509*(1-c6)) & (col<549*(1-c6)) & (row>=133*(1-c6)) & (row<173)*(1-c6));
assign rec7=((col>=559*(1-c7)) & (col<599*(1-c7)) & (row>=133*(1-c7)) & (row<173)*(1-c7));
assign rec8=((col>=609*(1-c8)) & (col<649*(1-c8)) & (row>=133*(1-c8)) & (row<173)*(1-c8));
assign rec9=((col>=659*(1-c9)) & (col<699*(1-c9)) & (row>=133*(1-c9)) & (row<173)*(1-c9));
assign rec10=((col>=709*(1-c10)) & (col<749*(1-c10)) & (row>=133*(1-c10)) & (row<173)*(1-c10));

assign rec11=((col>=259*(1-c11)) & (col<299*(1-c11)) & (row>=183*(1-c11)) & (row<223)*(1-c11));
assign rec12=((col>=309*(1-c12)) & (col<349*(1-c12)) & (row>=183*(1-c12)) & (row<223)*(1-c12));
assign rec13=((col>=359*(1-c13)) & (col<399*(1-c13)) & (row>=183*(1-c13)) & (row<223)*(1-c13));
assign rec14=((col>=409*(1-c14)) & (col<449*(1-c14)) & (row>=183*(1-c14)) & (row<223)*(1-c14));
assign rec15=((col>=459*(1-c15)) & (col<499*(1-c15)) & (row>=183*(1-c15)) & (row<223)*(1-c15));
assign rec16=((col>=509*(1-c16)) & (col<549*(1-c16)) & (row>=183*(1-c16)) & (row<223)*(1-c16));
assign rec17=((col>=559*(1-c17)) & (col<599*(1-c17)) & (row>=183*(1-c17)) & (row<223)*(1-c17));
assign rec18=((col>=609*(1-c18)) & (col<649*(1-c18)) & (row>=183*(1-c18)) & (row<223)*(1-c18));
assign rec19=((col>=659*(1-c19)) & (col<699*(1-c19)) & (row>=183*(1-c19)) & (row<223)*(1-c19));
assign rec20=((col>=709*(1-c20)) & (col<749*(1-c20)) & (row>=183*(1-c20)) & (row<223)*(1-c20));

assign rec21=((col>=259*(1-c21)) & (col<299*(1-c21)) & (row>=233*(1-c21)) & (row<273)*(1-c21));
assign rec22=((col>=309*(1-c22)) & (col<349*(1-c22)) & (row>=233*(1-c22)) & (row<273)*(1-c22));
assign rec23=((col>=359*(1-c23)) & (col<399*(1-c23)) & (row>=233*(1-c23)) & (row<273)*(1-c23));
assign rec24=((col>=409*(1-c24)) & (col<449*(1-c24)) & (row>=233*(1-c24)) & (row<273)*(1-c24));
assign rec25=((col>=459*(1-c25)) & (col<499*(1-c25)) & (row>=233*(1-c25)) & (row<273)*(1-c25));
assign rec26=((col>=509*(1-c26)) & (col<549*(1-c26)) & (row>=233*(1-c26)) & (row<273)*(1-c26));
assign rec27=((col>=559*(1-c27)) & (col<599*(1-c27)) & (row>=233*(1-c27)) & (row<273)*(1-c27));
assign rec28=((col>=609*(1-c28)) & (col<649*(1-c28)) & (row>=233*(1-c28)) & (row<273)*(1-c28));
assign rec29=((col>=659*(1-c29)) & (col<699*(1-c29)) & (row>=233*(1-c29)) & (row<273)*(1-c29));
assign rec30=((col>=709*(1-c30)) & (col<749*(1-c30)) & (row>=233*(1-c30)) & (row<273)*(1-c30));

assign rec31=((col>=259*(1-c31)) & (col<299*(1-c31)) & (row>=283*(1-c31)) & (row<323)*(1-c31));
assign rec32=((col>=309*(1-c32)) & (col<349*(1-c32)) & (row>=283*(1-c32)) & (row<323)*(1-c32));
assign rec33=((col>=359*(1-c33)) & (col<399*(1-c33)) & (row>=283*(1-c33)) & (row<323)*(1-c33));
assign rec34=((col>=409*(1-c34)) & (col<449*(1-c34)) & (row>=283*(1-c34)) & (row<323)*(1-c34));
assign rec35=((col>=459*(1-c35)) & (col<499*(1-c35)) & (row>=283*(1-c35)) & (row<323)*(1-c35));
assign rec36=((col>=509*(1-c36)) & (col<549*(1-c36)) & (row>=283*(1-c36)) & (row<323)*(1-c36));
assign rec37=((col>=559*(1-c37)) & (col<599*(1-c37)) & (row>=283*(1-c37)) & (row<323)*(1-c37));
assign rec38=((col>=609*(1-c38)) & (col<649*(1-c38)) & (row>=283*(1-c38)) & (row<323)*(1-c38));
assign rec39=((col>=659*(1-c39)) & (col<699*(1-c39)) & (row>=283*(1-c39)) & (row<323)*(1-c39));
assign rec40=((col>=709*(1-c40)) & (col<749*(1-c40)) & (row>=283*(1-c40)) & (row<323)*(1-c40));

assign yellow=((col>=left-75) & (col<left+75) & (row>=573) & (row<603));

assign  g1=20'b00000001111111100000;
assign  g2=20'b00001111111111100000;
assign  g3=20'b00111000000000000000;
assign  g4=20'b01110000000000000000;
assign  g5=20'b11100000000000000000;
assign  g6=20'b11100000000000000000;
assign  g7=20'b11100000000000000000;
assign  g8=20'b11100000000000000000;
assign  g9=20'b11100000111111100000;
assign g10=20'b11100000111111100000;
assign g11=20'b11100000000001100000;
assign g12=20'b11100000000001100000;
assign g13=20'b11100000000001100000;
assign g14=20'b11100000000001100000;
assign g15=20'b01110000000001100000;
assign g16=20'b00111000000001100000;
assign g17=20'b00011100000001100000;
assign g18=20'b00001110000001100000;
assign g19=20'b00000111111111100000;
assign g20=20'b00000001111111100000;


assign  a1=20'b00000000011000000000;
assign  a2=20'b00000001111110000000;
assign  a3=20'b00000111000011100000;
assign  a4=20'b00000111000011100000;
assign  a5=20'b00000111000011100000;
assign  a6=20'b00001110000001110000;
assign  a7=20'b00011100000000111000;
assign  a8=20'b00011100000000111000;
assign  a9=20'b00011100000000111000;
assign  a10=20'b00011100000000111000;
assign  a11=20'b00011100000000111000;
assign  a12=20'b00111111111111111100;
assign  a13=20'b00111111111111111100;
assign  a14=20'b00111000000000011100;
assign  a15=20'b00111000000000011100;
assign  a16=20'b00111000000000011100;
assign  a17=20'b01110000000000001110;
assign  a18=20'b01110000000000001110;
assign  a19=20'b11100000000000000111;
assign  a20=20'b11100000000000000111;


assign  m1=20'b11111000000000011111;
assign  m2=20'b11111000000000010111;
assign  m3=20'b11101100000000110111;
assign  m4=20'b11101100000000110111;
assign  m5=20'b11101100000000110111;
assign  m6=20'b11101100000000110111;
assign  m7=20'b11100110000001100111;
assign  m8=20'b11100110000001100111;
assign  m9=20'b11100110000001100111;
assign  m10=20'b11100110000001100111;
assign  m11=20'b11100011000011000111;
assign  m12=20'b11100011000011000111;
assign  m13=20'b11100011000011000111;
assign  m14=20'b11100011000011000111;
assign  m15=20'b11100001100110000111;
assign  m16=20'b11100001100110000111;
assign  m17=20'b11100001100110000111;
assign  m18=20'b11100001100110000111;
assign  m19=20'b11100000011000000111;
assign  m20=20'b11100000011000000111;


assign  e1=20'b11111111111111111111;
assign  e2=20'b11111111111111111111;
assign  e3=20'b11100000000000000000;
assign  e4=20'b11100000000000000000;
assign  e5=20'b11100000000000000000;
assign  e6=20'b11100000000000000000;
assign  e7=20'b11100000000000000000;
assign  e8=20'b11100000000000000000;
assign  e9=20'b11100000000000000000;
assign  e10=20'b11111111111111111111;
assign  e11=20'b11111111111111111111;
assign  e12=20'b11100000000000000000;
assign  e13=20'b11100000000000000000;
assign  e14=20'b11100000000000000000;
assign  e15=20'b11100000000000000000;
assign  e16=20'b11100000000000000000;
assign  e17=20'b11100000000000000000;
assign  e18=20'b11100000000000000000;
assign  e19=20'b11111111111111111111;
assign  e20=20'b11111111111111111111;

always @(posedge clk)begin
c_state<=n_state;
n_state<=kclk;
end

always @(posedge clk)begin
if(cou1==6250000)
key_reg<=22'b0000000000000000000000;


else
begin
case({c_state,n_state})
2'b10:begin
key_reg<={kdata,key_reg[21:1]};
end
default:key_reg<=key_reg;
endcase
end


end

always @(posedge clk or posedge reset)begin
if(reset)
cou1<=0;
else if(cou1==6250000)
cou1<=0;
else if(c_state==1 && n_state==0)
cou1<=0;
else if(key_reg>=0)
cou1<=cou1+1;
else 
cou1<=cou1;
end



always @(posedge clk)
begin
	if( check==1'b1)
	begin
		if(key_reg[19:12]==8'b01101011)begin
			key_data<=8'b01101011;
			
			end
		else if (key_reg[19:12]==8'h74)begin
			key_data<=8'b01110100;
			
			end
		else
			key_data<=key_reg[19:12];
	end

			else
			key_data<=key_reg[19:12];		
end

always @(posedge clk or posedge reset)begin
if(reset)begin
cou2<=0;
cou3<=0;
end
else if(key_data==8'b01101011)begin
		cou2<=cou2+1;
		if(cou2==1562500)
		cou2<=0;
		end
	else if(key_data==8'b01110100)begin
		cou3<=cou3+1;
		if(cou3==1562500)
		cou3<=0;
		end

end


always @(posedge clk or posedge reset)
begin
	if(reset)begin
		left<=504;
		end
	else if(cou2==1562500)begin
	if(left==219)
	left<=left;
	else
	
		left<=left-1;
		end
	else if(cou3==1562500)begin
		if(left==789)
	   left<=left;
	   else
		left<=left+1;
		end
		else 
		begin
		left<=left;		
		end
end


always @(posedge clk or posedge reset)
begin
	if(reset)begin
		left2<=504;
		stop<=0;
		end
	else if(BTN_NORTH)
	stop<=1;
	else if(cou2==1562500 && stop==0)begin
	if(left2==219)
	left2<=left2;
	else
	
		left2<=left2-1;
		end
	else if(cou3==1562500 && stop==0)begin
		if(left2==789)
	   left2<=left2;
	   else
		left2<=left2+1;
		end
		else 
		begin
		left2<=left2;	
     stop<=stop;		
		end
		
end


always @(posedge fuck or posedge reset )
begin
	if(reset)
	begin
	centerx<=0;
	centery<=548;
	end
	
	
	else if(leftup==1)
	begin
	centerx<=centerx-1;
	centery<=centery-1;
	end
	else if(leftdown==1)
	begin
	centerx<=centerx-1;
	centery<=centery+1;
	end
	else if(rightup==1)
	begin
	centerx<=centerx+1;
	centery<=centery-1;
	end
	else if(rightdown==1)
	begin
	centerx<=centerx+1;
	centery<=centery+1;
	end
	else
	begin
	centerx<=centerx;
	centery<=centery;
	end

end

always @(posedge clk or posedge reset)
begin
	if(reset)
		fuck<=0;
	else if(coun<=1562500)
		fuck<=0;
	else if(coun>1562500)
		fuck<=1;
	else 
		fuck<=0;
end


always@(posedge clk)
begin
	if(reset)
		G<=0;
	else if(over==1 &&col<410 &&col>=390)
	begin
		case(row)
		500:G<=g1[409-col];
		501:G<=g2[409-col];
		502:G<=g3[409-col];
		503:G<=g4[409-col];
		504:G<=g5[409-col];
		505:G<=g6[409-col];
		506:G<=g7[409-col];
		507:G<=g8[409-col];
		508:G<=g9[409-col];
		509:G<=g10[409-col];
		510:G<=g11[409-col];
		511:G<=g12[409-col];
		512:G<=g13[409-col];
		513:G<=g14[409-col];
		514:G<=g15[409-col];
		515:G<=g16[409-col];
		516:G<=g17[409-col];
		517:G<=g18[409-col];
		518:G<=g19[409-col];
		519:G<=g20[409-col];
		endcase
		
	end
	else 
		 G<=0;

end

always@(posedge clk)
begin
	if(reset)
		A<=0;
	else if(over==1 &&col<440 &&col>=420)
	begin
		case(row)
		500:A<=a1[col-420];
		501:A<=a2[col-420];
		502:A<=a3[col-420];
		503:A<=a4[col-420];
		504:A<=a5[col-420];
		505:A<=a6[col-420];
		506:A<=a7[col-420];
		507:A<=a8[col-420];
		508:A<=a9[col-420];
		509:A<=a10[col-420];
		510:A<=a11[col-420];
		511:A<=a12[col-420];
		512:A<=a13[col-420];
		513:A<=a14[col-420];
		514:A<=a15[col-420];
		515:A<=a16[col-420];
		516:A<=a17[col-420];
		517:A<=a18[col-420];
		518:A<=a19[col-420];
		519:A<=a20[col-420];
		endcase
	end
	
	else
	A<=0;

end


always@(posedge clk)
begin
	if(reset)
		M<=0;
	else if(over==1 &&col<470 &&col>=450)
	begin
		case(row)
		500:M<=m1[470-col];
		501:M<=m2[470-col];
		502:M<=m3[470-col];
		503:M<=m4[470-col];
		504:M<=m5[470-col];
		505:M<=m6[470-col];
		506:M<=m7[470-col];
		507:M<=m8[470-col];
		508:M<=m9[470-col];
		509:M<=m10[470-col];
		510:M<=m11[470-col];
		511:M<=m12[470-col];
		512:M<=m13[470-col];
		513:M<=m14[470-col];
		514:M<=m15[470-col];
		515:M<=m16[470-col];
		516:M<=m17[470-col];
		517:M<=m18[470-col];
		518:M<=m19[470-col];
		519:M<=m20[470-col];
		endcase
	end
	
	else
	M<=0;

end

always@(posedge clk)
begin
	if(reset)
		E<=0;
	else if(over==1 &&col<500 &&col>=480)
	begin
		case(row)
		500:E<=e1[500-col];
		501:E<=e2[500-col];
		502:E<=e3[500-col];
		503:E<=e4[500-col];
		504:E<=e5[500-col];
		505:E<=e6[500-col];
		506:E<=e7[500-col];
		507:E<=e8[500-col];
		508:E<=e9[500-col];
		509:E<=e10[500-col];
		510:E<=e11[500-col];
		511:E<=e12[500-col];
		512:E<=e13[500-col];
		513:E<=e14[500-col];
		514:E<=e15[500-col];
		515:E<=e16[500-col];
		516:E<=e17[500-col];
		517:E<=e18[500-col];
		518:E<=e19[500-col];
		519:E<=e20[500-col];
		endcase
	end
	
	else
	E<=0;

end

always @(posedge clk or posedge reset)
begin
	if(reset)
		coun<=0;
	else if(coun==3125000)
		coun<=0;
	else 
		coun<=coun+1;
end



always @(posedge clk or posedge reset)
begin

	if(reset)
	begin
		leftup<=0;
		leftdown<=0;
		rightup<=0;
		rightdown<=0;
		c1<=0;
		c2<=0;
		c3<=0;
		c4<=0;
		c5<=0;
		c6<=0;
		c7<=0;
		c8<=0;
		c9<=0;
		c10<=0;
		
		c11<=0;
		c12<=0;
		c13<=0;
		c14<=0;
		c15<=0;
		c16<=0;
		c17<=0;
		c18<=0;
		c19<=0;
		c20<=0;
		
		c31<=0;
		c32<=0;
		c33<=0;
		c34<=0;
		c35<=0;
		c36<=0;
		c37<=0;
		c38<=0;
		c39<=0;
		c40<=0;
		
		c21<=0;
		c22<=0;
		c23<=0;
		c24<=0;
		c25<=0;
		c26<=0;
		c27<=0;
		c28<=0;
		c29<=0;
		c30<=0;
		over<=0;
	end
	
	else if(BTN_NORTH==1)
	begin
		leftup<=1;
		leftdown<=0;
		rightup<=0;
		rightdown<=0;
	end




	else if(ball && visible==1)
	begin
		if(leftup==1 && row==63 )
		begin
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		
		else if(rightup==1 && row==63)
		begin
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		
		else if(rightdown==1 && row==622)
		begin
				over<=1;
		end
		
		else if(leftdown==1 && row==622)
		begin
			over<=1;
		end
		
		else if(rightdown==1 && col==863)
		begin
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		
		else if(rightup==1 && col==863)
		begin
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		
		else if(leftup==1 && col==144)
		begin
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		
		else if(leftdown==1 && col==144)
		begin
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
	
	
	
		else if(ball&&black_rec==1)
		begin
			if(leftdown==1 &&  row==403)
			begin
				leftup<=1;
				leftdown<=0;
				rightup<=0;
				rightdown<=0;
			end
			
			else if(rightdown==1 && row==403)
			begin
				leftup<=0;
				leftdown<=0;
				rightup<=1;
				rightdown<=0;
			end
			
			else if(leftup==1 && row==422)
			begin
				leftup<=0;
				leftdown<=1;
				rightup<=0;
				rightdown<=0;
			end
			
			else if(rightup==1 &&  row==422)
			begin
				leftup<=0;
				leftdown<=0;
				rightup<=0;
				rightdown<=1;
			end
			
			else if(rightup==1 && col ==613-black_count)
			begin
				leftup<=1;
				leftdown<=0;
				rightup<=0;
				rightdown<=0;
			end
			
			else if(rightdown==1 && col ==613-black_count)
			begin
				leftup<=0;
				leftdown<=1;
				rightup<=0;
				rightdown<=0;
			end
			
			else if(leftup==1 && col ==862-black_count)
			begin
				leftup<=0;
				leftdown<=0;
				rightup<=1;
				rightdown<=0;
			end
			
			else if(leftdown==1 && col ==862-black_count)
			begin
				leftup<=0;
				leftdown<=0;
				rightup<=0;
				rightdown<=1;
			end	
		end
		
		
		
		else if(yellow&&ball)
		begin
			if(leftdown==1 && row==573)
			begin
				leftup<=1;
				leftdown<=0;
				rightup<=0;
				rightdown<=0;
			end	
			
			else if(rightdown==1 && row==573)
			begin
				leftup<=0;
				leftdown<=0;
				rightup<=1;
				rightdown<=0;
			end	
			
			
			else if(rightdown==1 && col==left+144)
			begin
				leftup<=0;
				leftdown<=1;
				rightup<=0;
				rightdown<=0;
			end	
		
			else if(leftdown==1 && col==left+293)
			begin
				leftup<=0;
				leftdown<=0;
				rightup<=0;
				rightdown<=1;
			end	
		end
		
		
		/*1
1
1
111
1
1
1
1
11
1
1
1
1
1
1
1
1
1*/

		
				
		else if(ball==1 && rec1==1)begin
		if(c1==0 && rightdown==1 && row==133)begin
			c1<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c1==0 && leftdown==1 && row==133)begin
			c1<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c1==0 && rightup==1 && row==172)begin
			c1<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c1==0 && leftup==1 && row==172)begin
			c1<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c1==0 && rightdown==1 && col==259)begin
			c1<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c1==0 && rightup==1 && col==259)begin
			c1<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c1==0 && leftdown==1 && col==299)begin
			c1<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c1==0 && leftup==1 && col==299)begin
			c1<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end






		else if(ball==1 && rec2==1)begin
		if(c2==0 && rightdown==1 && row==133)begin
			c2<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c2==0 && leftdown==1 && row==133)begin
			c2<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c2==0 && rightup==1 && row==172)begin
			c2<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c2==0 && leftup==1 && row==172)begin
			c2<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c2==0 && rightdown==1 && col==309)begin
			c2<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c2==0 && rightup==1 && col==309)begin
			c2<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c2==0 && leftdown==1 && col==348)begin
			c2<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c2==0 && leftup==1 && col==348)begin
			c2<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end




		else if(ball==1 && rec3==1)begin
		if(c3==0 && rightdown==1 && row==133)begin
			c3<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c3==0 && leftdown==1 && row==133)begin
			c3<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c3==0 && rightup==1 && row==172)begin
			c3<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c3==0 && leftup==1 && row==172)begin
			c3<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c3==0 && rightdown==1 && col==359)begin
			c3<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c3==0 && rightup==1 && col==359)begin
			c3<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c3==0 && leftdown==1 && col==398)begin
			c3<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c3==0 && leftup==1 && col==398)begin
			c3<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end





		else if(ball==1 && rec4==1)begin
		if(c4==0 && rightdown==1 && row==133)begin
			c4<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c4==0 && leftdown==1 && row==133)begin
			c4<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c4==0 && rightup==1 && row==172)begin
			c4<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c4==0 && leftup==1 && row==172)begin
			c4<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c4==0 && rightdown==1 && col==409)begin
			c4<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c4==0 && rightup==1 && col==409)begin
			c4<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c4==0 && leftdown==1 && col==448)begin
			c4<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c4==0 && leftup==1 && col==448)begin
			c4<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end




		else if(ball==1 && rec5==1)begin
		if(c5==0 && rightdown==1 && row==133)begin
			c5<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c5==0 && leftdown==1 && row==133)begin
			c5<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c5==0 && rightup==1 && row==172)begin
			c5<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c5==0 && leftup==1 && row==172)begin
			c5<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c5==0 && rightdown==1 && col==459)begin
			c5<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c5==0 && rightup==1 && col==459)begin
			c5<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c5==0 && leftdown==1 && col==498)begin
			c5<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c5==0 && leftup==1 && col==498)begin
			c5<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end







		else if(ball==1 && rec6==1)begin
		if(c6==0 && rightdown==1 && row==133)begin
			c6<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c6==0 && leftdown==1 && row==133)begin
			c6<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c6==0 && rightup==1 && row==172)begin
			c6<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c6==0 && leftup==1 && row==172)begin
			c6<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c6==0 && rightdown==1 && col==509)begin
			c6<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c6==0 && rightup==1 && col==509)begin
			c6<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c6==0 && leftdown==1 && col==548)begin
			c6<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c6==0 && leftup==1 && col==548)begin
			c6<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end


		else if(ball==1 && rec7==1)begin
		if(c7==0 && rightdown==1 && row==133)begin
			c7<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c7==0 && leftdown==1 && row==133)begin
			c7<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c7==0 && rightup==1 && row==172)begin
			c7<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c7==0 && leftup==1 && row==172)begin
			c7<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c7==0 && rightdown==1 && col==559)begin
			c7<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c7==0 && rightup==1 && col==559)begin
			c7<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c7==0 && leftdown==1 && col==598)begin
			c7<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c7==0 && leftup==1 && col==598)begin
			c7<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end

		else if(ball==1 && rec8==1)begin
		if(c8==0 && rightdown==1 && row==133)begin
			c8<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c8==0 && leftdown==1 && row==133)begin
			c8<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c8==0 && rightup==1 && row==172)begin
			c8<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c8==0 && leftup==1 && row==172)begin
			c8<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c8==0 && rightdown==1 && col==609)begin
			c8<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c8==0 && rightup==1 && col==609)begin
			c8<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c8==0 && leftdown==1 && col==648)begin
			c8<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c8==0 && leftup==1 && col==648)begin
			c8<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end

		else if(ball==1 && rec9==1)begin
		if(c9==0 && rightdown==1 && row==133)begin
			c9<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c9==0 && leftdown==1 && row==133)begin
			c9<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c9==0 && rightup==1 && row==172)begin
			c9<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c9==0 && leftup==1 && row==172)begin
			c9<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c9==0 && rightdown==1 && col==659)begin
			c9<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c9==0 && rightup==1 && col==659)begin
			c9<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c9==0 && leftdown==1 && col==698)begin
			c9<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c9==0 && leftup==1 && col==698)begin
			c9<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end

		else if(ball==1 && rec10==1)begin
		if(c10==0 && rightdown==1 && row==133)begin
			c10<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c10==0 && leftdown==1 && row==133)begin
			c10<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c10==0 && rightup==1 && row==172)begin
			c10<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c10==0 && leftup==1 && row==172)begin
			c10<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c10==0 && rightdown==1 && col==709)begin
			c10<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c10==0 && rightup==1 && col==709)begin
			c10<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c10==0 && leftdown==1 && col==748)begin
			c10<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c10==0 && leftup==1 && col==748)begin
			c10<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end
		
		
		else if(ball==1 && rec11==1)begin
		if(c11==0 && rightdown==1 && row==183)begin
			c11<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c11==0 && leftdown==1 && row==183)begin
			c11<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c11==0 && rightup==1 && row==222)begin
			c11<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c11==0 && leftup==1 && row==222)begin
			c11<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c11==0 && rightdown==1 && col==259)begin
			c11<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c11==0 && rightup==1 && col==259)begin
			c11<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c11==0 && leftdown==1 && col==299)begin
			c11<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c11==0 && leftup==1 && col==299)begin
			c11<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end






		else if(ball==1 && rec12==1)begin
		if(c12==0 && rightdown==1 && row==183)begin
			c12<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c12==0 && leftdown==1 && row==183)begin
			c12<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c12==0 && rightup==1 && row==222)begin
			c12<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c12==0 && leftup==1 && row==222)begin
			c12<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c12==0 && rightdown==1 && col==309)begin
			c12<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c12==0 && rightup==1 && col==309)begin
			c12<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c12==0 && leftdown==1 && col==348)begin
			c12<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c12==0 && leftup==1 && col==348)begin
			c12<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end




		else if(ball==1 && rec13==1)begin
		if(c13==0 && rightdown==1 && row==183)begin
			c13<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c13==0 && leftdown==1 && row==183)begin
			c13<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c13==0 && rightup==1 && row==222)begin
			c13<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c13==0 && leftup==1 && row==222)begin
			c13<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c13==0 && rightdown==1 && col==359)begin
			c13<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c13==0 && rightup==1 && col==359)begin
			c13<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c13==0 && leftdown==1 && col==398)begin
			c13<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c13==0 && leftup==1 && col==398)begin
			c13<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end





		else if(ball==1 && rec14==1)begin
		if(c14==0 && rightdown==1 && row==183)begin
			c14<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c14==0 && leftdown==1 && row==183)begin
			c14<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c14==0 && rightup==1 && row==222)begin
			c14<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c14==0 && leftup==1 && row==222)begin
			c14<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c14==0 && rightdown==1 && col==409)begin
			c14<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c14==0 && rightup==1 && col==409)begin
			c14<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c14==0 && leftdown==1 && col==448)begin
			c14<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c14==0 && leftup==1 && col==448)begin
			c14<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end




		else if(ball==1 && rec15==1)begin
		if(c15==0 && rightdown==1 && row==183)begin
			c15<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c15==0 && leftdown==1 && row==183)begin
			c15<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c15==0 && rightup==1 && row==222)begin
			c15<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c15==0 && leftup==1 && row==222)begin
			c15<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c15==0 && rightdown==1 && col==459)begin
			c15<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c15==0 && rightup==1 && col==459)begin
			c15<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c15==0 && leftdown==1 && col==498)begin
			c15<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c15==0 && leftup==1 && col==498)begin
			c15<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end







		else if(ball==1 && rec16==1)begin
		if(c16==0 && rightdown==1 && row==183)begin
			c16<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c16==0 && leftdown==1 && row==183)begin
			c16<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c16==0 && rightup==1 && row==222)begin
			c16<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c16==0 && leftup==1 && row==222)begin
			c16<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c16==0 && rightdown==1 && col==509)begin
			c16<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c16==0 && rightup==1 && col==509)begin
			c16<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c16==0 && leftdown==1 && col==548)begin
			c16<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c16==0 && leftup==1 && col==548)begin
			c16<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end


		else if(ball==1 && rec17==1)begin
		if(c17==0 && rightdown==1 && row==183)begin
			c17<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c17==0 && leftdown==1 && row==183)begin
			c17<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c17==0 && rightup==1 && row==222)begin
			c17<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c17==0 && leftup==1 && row==222)begin
			c17<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c17==0 && rightdown==1 && col==559)begin
			c17<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c17==0 && rightup==1 && col==559)begin
			c17<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c17==0 && leftdown==1 && col==598)begin
			c17<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c17==0 && leftup==1 && col==598)begin
			c17<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end

		else if(ball==1 && rec18==1)begin
		if(c18==0 && rightdown==1 && row==183)begin
			c18<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c18==0 && leftdown==1 && row==183)begin
			c18<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c18==0 && rightup==1 && row==222)begin
			c18<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c18==0 && leftup==1 && row==222)begin
			c18<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c18==0 && rightdown==1 && col==609)begin
			c18<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c18==0 && rightup==1 && col==609)begin
			c18<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c18==0 && leftdown==1 && col==648)begin
			c18<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c18==0 && leftup==1 && col==648)begin
			c18<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end

		else if(ball==1 && rec19==1)begin
		if(c19==0 && rightdown==1 && row==183)begin
			c19<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c19==0 && leftdown==1 && row==183)begin
			c19<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c19==0 && rightup==1 && row==222)begin
			c19<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c19==0 && leftup==1 && row==222)begin
			c19<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c19==0 && rightdown==1 && col==659)begin
			c19<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c19==0 && rightup==1 && col==659)begin
			c19<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c19==0 && leftdown==1 && col==698)begin
			c19<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c19==0 && leftup==1 && col==698)begin
			c19<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end

		else if(ball==1 && rec20==1)begin
		if(c20==0 && rightdown==1 && row==183)begin
			c20<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c20==0 && leftdown==1 && row==183)begin
			c20<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c20==0 && rightup==1 && row==222)begin
			c20<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c20==0 && leftup==1 && row==222)begin
			c20<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c20==0 && rightdown==1 && col==709)begin
			c20<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c20==0 && rightup==1 && col==709)begin
			c20<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c20==0 && leftdown==1 && col==748)begin
			c20<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c20==0 && leftup==1 && col==748)begin
			c20<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end
		
		else if(ball==1 && rec21==1)begin
		if(c21==0 && rightdown==1 && row==233)begin
			c21<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c21==0 && leftdown==1 && row==233)begin
			c21<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c21==0 && rightup==1 && row==272)begin
			c21<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c21==0 && leftup==1 && row==272)begin
			c21<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c21==0 && rightdown==1 && col==259)begin
			c21<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c21==0 && rightup==1 && col==259)begin
			c21<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c21==0 && leftdown==1 && col==299)begin
			c21<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c21==0 && leftup==1 && col==299)begin
			c21<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end






		else if(ball==1 && rec22==1)begin
		if(c22==0 && rightdown==1 && row==233)begin
			c22<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c22==0 && leftdown==1 && row==233)begin
			c22<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c22==0 && rightup==1 && row==272)begin
			c22<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c22==0 && leftup==1 && row==272)begin
			c22<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c22==0 && rightdown==1 && col==309)begin
			c22<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c22==0 && rightup==1 && col==309)begin
			c22<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c22==0 && leftdown==1 && col==348)begin
			c22<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c22==0 && leftup==1 && col==348)begin
			c22<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end




		else if(ball==1 && rec23==1)begin
		if(c23==0 && rightdown==1 && row==233)begin
			c23<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c23==0 && leftdown==1 && row==233)begin
			c23<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c23==0 && rightup==1 && row==272)begin
			c23<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c23==0 && leftup==1 && row==272)begin
			c23<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c23==0 && rightdown==1 && col==359)begin
			c23<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c23==0 && rightup==1 && col==359)begin
			c23<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c23==0 && leftdown==1 && col==398)begin
			c23<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c23==0 && leftup==1 && col==398)begin
			c23<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end





		else if(ball==1 && rec24==1)begin
		if(c24==0 && rightdown==1 && row==233)begin
			c24<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c24==0 && leftdown==1 && row==233)begin
			c24<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c24==0 && rightup==1 && row==272)begin
			c24<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c24==0 && leftup==1 && row==272)begin
			c24<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c24==0 && rightdown==1 && col==409)begin
			c24<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c24==0 && rightup==1 && col==409)begin
			c24<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c24==0 && leftdown==1 && col==448)begin
			c24<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c24==0 && leftup==1 && col==448)begin
			c24<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end




		else if(ball==1 && rec25==1)begin
		if(c25==0 && rightdown==1 && row==233)begin
			c25<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c25==0 && leftdown==1 && row==233)begin
			c25<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c25==0 && rightup==1 && row==272)begin
			c25<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c25==0 && leftup==1 && row==272)begin
			c25<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c25==0 && rightdown==1 && col==459)begin
			c25<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c25==0 && rightup==1 && col==459)begin
			c25<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c25==0 && leftdown==1 && col==498)begin
			c25<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c25==0 && leftup==1 && col==498)begin
			c25<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end







		else if(ball==1 && rec26==1)begin
		if(c26==0 && rightdown==1 && row==233)begin
			c26<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c26==0 && leftdown==1 && row==233)begin
			c26<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c26==0 && rightup==1 && row==272)begin
			c26<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c26==0 && leftup==1 && row==272)begin
			c26<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c26==0 && rightdown==1 && col==509)begin
			c26<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c26==0 && rightup==1 && col==509)begin
			c26<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c26==0 && leftdown==1 && col==548)begin
			c26<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c26==0 && leftup==1 && col==548)begin
			c26<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end


		else if(ball==1 && rec27==1)begin
		if(c27==0 && rightdown==1 && row==233)begin
			c27<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c27==0 && leftdown==1 && row==233)begin
			c27<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c27==0 && rightup==1 && row==272)begin
			c27<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c27==0 && leftup==1 && row==272)begin
			c27<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c27==0 && rightdown==1 && col==559)begin
			c27<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c27==0 && rightup==1 && col==559)begin
			c27<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c27==0 && leftdown==1 && col==598)begin
			c27<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c27==0 && leftup==1 && col==598)begin
			c27<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end

		else if(ball==1 && rec28==1)begin
		if(c28==0 && rightdown==1 && row==233)begin
			c28<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c28==0 && leftdown==1 && row==233)begin
			c28<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c28==0 && rightup==1 && row==272)begin
			c28<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c28==0 && leftup==1 && row==272)begin
			c28<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c28==0 && rightdown==1 && col==609)begin
			c28<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c28==0 && rightup==1 && col==609)begin
			c28<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c28==0 && leftdown==1 && col==648)begin
			c28<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c28==0 && leftup==1 && col==648)begin
			c28<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end

		else if(ball==1 && rec29==1)begin
		if(c29==0 && rightdown==1 && row==233)begin
			c29<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c29==0 && leftdown==1 && row==233)begin
			c29<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c29==0 && rightup==1 && row==272)begin
			c29<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c29==0 && leftup==1 && row==272)begin
			c29<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c29==0 && rightdown==1 && col==659)begin
			c29<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c29==0 && rightup==1 && col==659)begin
			c29<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c29==0 && leftdown==1 && col==698)begin
			c29<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c29==0 && leftup==1 && col==698)begin
			c29<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end

		else if(ball==1 && rec30==1)begin
		if(c30==0 && rightdown==1 && row==233)begin
			c30<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c30==0 && leftdown==1 && row==233)begin
			c30<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c30==0 && rightup==1 && row==272)begin
			c30<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c30==0 && leftup==1 && row==272)begin
			c30<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c30==0 && rightdown==1 && col==709)begin
			c30<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c30==0 && rightup==1 && col==709)begin
			c30<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c30==0 && leftdown==1 && col==748)begin
			c30<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c30==0 && leftup==1 && col==748)begin
			c30<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end
		
		else if(ball==1 && rec31==1)begin
		if(c31==0 && rightdown==1 && row==283)begin
			c31<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c31==0 && leftdown==1 && row==283)begin
			c31<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c31==0 && rightup==1 && row==322)begin
			c31<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c31==0 && leftup==1 && row==322)begin
			c31<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c31==0 && rightdown==1 && col==259)begin
			c31<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c31==0 && rightup==1 && col==259)begin
			c31<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c31==0 && leftdown==1 && col==299)begin
			c31<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c31==0 && leftup==1 && col==299)begin
			c31<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end






		else if(ball==1 && rec32==1)begin
		if(c32==0 && rightdown==1 && row==283)begin
			c32<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c32==0 && leftdown==1 && row==283)begin
			c32<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c32==0 && rightup==1 && row==322)begin
			c32<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c32==0 && leftup==1 && row==322)begin
			c32<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c32==0 && rightdown==1 && col==309)begin
			c32<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c32==0 && rightup==1 && col==309)begin
			c32<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c32==0 && leftdown==1 && col==348)begin
			c32<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c32==0 && leftup==1 && col==348)begin
			c32<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end




		else if(ball==1 && rec33==1)begin
		if(c33==0 && rightdown==1 && row==283)begin
			c33<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c33==0 && leftdown==1 && row==283)begin
			c33<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c33==0 && rightup==1 && row==322)begin
			c33<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c33==0 && leftup==1 && row==322)begin
			c33<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c33==0 && rightdown==1 && col==359)begin
			c33<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c33==0 && rightup==1 && col==359)begin
			c33<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c33==0 && leftdown==1 && col==398)begin
			c33<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c33==0 && leftup==1 && col==398)begin
			c33<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end





		else if(ball==1 && rec34==1)begin
		if(c34==0 && rightdown==1 && row==283)begin
			c34<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c34==0 && leftdown==1 && row==283)begin
			c34<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c34==0 && rightup==1 && row==322)begin
			c34<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c34==0 && leftup==1 && row==322)begin
			c34<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c34==0 && rightdown==1 && col==409)begin
			c34<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c34==0 && rightup==1 && col==409)begin
			c34<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c34==0 && leftdown==1 && col==448)begin
			c34<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c34==0 && leftup==1 && col==448)begin
			c34<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end




		else if(ball==1 && rec35==1)begin
		if(c35==0 && rightdown==1 && row==283)begin
			c35<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c35==0 && leftdown==1 && row==283)begin
			c35<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c35==0 && rightup==1 && row==322)begin
			c35<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c35==0 && leftup==1 && row==322)begin
			c35<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c35==0 && rightdown==1 && col==459)begin
			c35<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c35==0 && rightup==1 && col==459)begin
			c35<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c35==0 && leftdown==1 && col==498)begin
			c35<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c35==0 && leftup==1 && col==498)begin
			c35<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end







		else if(ball==1 && rec36==1)begin
		if(c36==0 && rightdown==1 && row==283)begin
			c36<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c36==0 && leftdown==1 && row==283)begin
			c36<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c36==0 && rightup==1 && row==322)begin
			c36<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c36==0 && leftup==1 && row==322)begin
			c36<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c36==0 && rightdown==1 && col==509)begin
			c36<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c36==0 && rightup==1 && col==509)begin
			c36<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c36==0 && leftdown==1 && col==548)begin
			c36<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c36==0 && leftup==1 && col==548)begin
			c36<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end


		else if(ball==1 && rec37==1)begin
		if(c37==0 && rightdown==1 && row==283)begin
			c37<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c37==0 && leftdown==1 && row==283)begin
			c37<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c37==0 && rightup==1 && row==322)begin
			c37<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c37==0 && leftup==1 && row==322)begin
			c37<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c37==0 && rightdown==1 && col==559)begin
			c37<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c37==0 && rightup==1 && col==559)begin
			c37<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c37==0 && leftdown==1 && col==598)begin
			c37<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c37==0 && leftup==1 && col==598)begin
			c37<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end

		else if(ball==1 && rec38==1)begin
		if(c38==0 && rightdown==1 && row==283)begin
			c38<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c38==0 && leftdown==1 && row==283)begin
			c38<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c38==0 && rightup==1 && row==322)begin
			c38<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c38==0 && leftup==1 && row==322)begin
			c38<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c38==0 && rightdown==1 && col==609)begin
			c38<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c38==0 && rightup==1 && col==609)begin
			c38<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c38==0 && leftdown==1 && col==648)begin
			c38<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c38==0 && leftup==1 && col==648)begin
			c38<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end

		else if(ball==1 && rec39==1)begin
		if(c39==0 && rightdown==1 && row==283)begin
			c39<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c39==0 && leftdown==1 && row==283)begin
			c39<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c39==0 && rightup==1 && row==322)begin
			c39<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c39==0 && leftup==1 && row==322)begin
			c39<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c39==0 && rightdown==1 && col==659)begin
			c39<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c39==0 && rightup==1 && col==659)begin
			c39<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c39==0 && leftdown==1 && col==698)begin
			c39<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c39==0 && leftup==1 && col==698)begin
			c39<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end

		else if(ball==1 && rec40==1)begin
		if(c40==0 && rightdown==1 && row==283)begin
			c40<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		else if(c40==0 && leftdown==1 && row==283)begin
			c40<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c40==0 && rightup==1 && row==322)begin
			c40<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c40==0 && leftup==1 && row==322)begin
			c40<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end

		else if(c40==0 && rightdown==1 && col==709)begin
			c40<=1;
			leftup<=0;
			leftdown<=1;
			rightup<=0;
			rightdown<=0;
		end
		else if(c40==0 && rightup==1 && col==709)begin
			c40<=1;
			leftup<=1;
			leftdown<=0;
			rightup<=0;
			rightdown<=0;
		end
		else if(c40==0 && leftdown==1 && col==748)begin
			c40<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=0;
			rightdown<=1;
		end
		else if(c40==0 && leftup==1 && col==748)begin
			c40<=1;
			leftup<=0;
			leftdown<=0;
			rightup<=1;
			rightdown<=0;
		end
		end
			/*11111
			
			1
			1
			1
			1
			11
			1
			1
			1
			1
			1
			1
			1
			1
			1
			1
			1
			1
			1
			1
			1
			11
			1
			1
			1
			1
			1
			1
			*/
	end
	
	
	
	


end









always @(posedge clk or posedge reset)begin
if(reset)
counter<=0;
else if(counter==3125000)
counter<=0; 
else
counter<=counter+1;
end


always @(posedge clk or posedge reset)begin
if(reset)begin
black_count<=0;
black_way<=0;
end
else if(counter==3125000 && black_way==0)
black_count<=black_count+1;
else if(counter==3125000 && black_way==1)begin
black_count<=black_count-1;
if(black_count==0)
black_way<=0;
end
else if(black_count==468)
black_way<=1;
else
begin
black_count<=black_count;
black_way<=black_way;
end
end

always @(posedge clk or posedge reset)begin
if(reset)
col<=0;
else if(col==1039)
col<=0; 
else
col<=col+1;
end




always @(posedge clk or posedge reset)begin
if(reset)
row<=0;
else if(row==665)
row<=0;
else if(col==1039)
row<=row+1; 
else
row<=row;
end






always @(posedge clk or posedge reset)begin
if(reset)begin
blue<=0;
green<=0;
red<=0;
end

else if(G && visible)
begin
blue<=0;
green<=0;
red<=1;
end


else if(A && visible)
begin
blue<=0;
green<=0;
red<=1;
end

else if(M && visible)
begin
blue<=0;
green<=0;
red<=1;
end

else if(E && visible)
begin
blue<=0;
green<=0;
red<=1;
end

else if(black_rec && over==0)begin
blue<=0;
green<=0;
red<=0;
end
else if((rec1 || rec2  || rec3  || rec4  || rec5  || rec6  || rec7  || rec8  || rec9  || rec10 || rec11 || rec12  || rec13  || rec14  || rec15  || rec16  || rec17  || rec18  || rec19  || rec20 || rec21 || rec22  || rec23  || rec24  || rec25  || rec26  || rec27  || rec28  || rec29  || rec30 || rec31 || rec32  || rec33  || rec34  || rec35  || rec36  || rec37  || rec38  || rec39  || rec40 ) && over==0)begin
blue<=0;
green<=1;
red<=0;
end

else if(ball && over==0)begin
blue<=0;
green<=0;
red<=1;
end

else if(black_rec && over==1)begin
blue<=1;
green<=0;
red<=0;
end
else if((rec1 || rec2  || rec3  || rec4  || rec5  || rec6  || rec7  || rec8  || rec9  || rec10 || rec11 || rec12  || rec13  || rec14  || rec15  || rec16  || rec17  || rec18  || rec19  || rec20 || rec21 || rec22  || rec23  || rec24  || rec25  || rec26  || rec27  || rec28  || rec29  || rec30 || rec31 || rec32  || rec33  || rec34  || rec35  || rec36  || rec37  || rec38  || rec39  || rec40 ) && over==1)begin
blue<=1;
green<=0;
red<=0;
end

else if(ball && over==1)begin
blue<=1;
green<=0;
red<=0;
end



else if(visible && !ball && !yellow && !black_rec && !(rec1 || rec2  || rec3  || rec4  || rec5  || rec6  || rec7  || rec8  || rec9  || rec10 || rec11 || rec12  || rec13  || rec14  || rec15  || rec16  || rec17  || rec18  || rec19  || rec20 || rec21 || rec22  || rec23  || rec24  || rec25  || rec26  || rec27  || rec28  || rec29  || rec30 || rec31 || rec32  || rec33  || rec34  || rec35  || rec36  || rec37  || rec38  || rec39  || rec40))begin
blue<=1;
green<=0;
red<=0;
end

else if(wall && !visible)begin
blue<=1;
green<=1;
red<=1;
end


else if(yellow && over==0)begin
blue<=0;
green<=1;
red<=1;
end

else if(yellow && over==1)begin
blue<=1;
green<=0;
red<=0;
end

else
begin
blue<=0;
green<=0;
red<=0;
end

end


endmodule
/*
wire rec1,rec2,rec3,rec4,rec5,rec6,rec7;





green row:133-173,183-223,233-273,283-323;col:259-299,309-349,359-399,409-449,459-499,509-549,559-599,609-649,659-699,709-749

yello row:573-603;col(mid:429-579
circle:row:548 col:504(x-504)^2+(y-548)^2=625






*/




