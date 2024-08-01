//Modulo do display de sete segmentos
module ssd (
  	input logic[3:0] entrada,	//entrada logica de 4 bits
  	output logic [6:0] saida	//saida logica de 7 bits 
);

	always_comb begin		//bloco always combinacional que é sensivel a todas as entradas
		case (entrada)	//bloco case que recebe a entrada como parametro e baseado no seu valor estipula uma saida
			4'b0000 : saida <= 7'b1000000; 	// 0
			4'b0001 : saida <= 7'b1111001; 	// 1
			4'b0010 : saida <= 7'b0100100; 	// 2
			4'b0011 : saida <= 7'b0110000; 	// 3
			4'b0100 : saida <= 7'b0011001; 	// 4
			4'b0101 : saida <= 7'b0010010; 	// 5
			4'b0110 : saida <= 7'b0000010; 	// 6
			4'b0111 : saida <= 7'b1111000; 	// 7
			4'b1000 : saida <= 7'b0000000; 	// 8
			4'b1001 : saida <= 7'b0011000; 	// 9
			default : saida <= 7'b1111111;	// em branco
		endcase	//finaliza o bloco case
	end			//finaliza o bloco always
endmodule		//finalisa o modulo


