<h2>컴퓨터 구조 (이성원 교수님) project 5개</h2>
<h3>Project #0</h3>
<p>1. Logisim으로 간단한 회로를 구현한다. transmission gates를 이용해 MUX를 만들고, MUX를 이용해 LATCH를 만든다.
LATCH를 이용해 D-FF를 만들고, DFF와 adder을 이용하여 synchronous 및 asynchronous up/down counter을 만든다.
비동기 카운터가 드물게 사용되는 이유는 clk가 독립적으로 작동할 시, 시간 지연이나 추적오류가 발생할 가능성이 있기 때문이다.
</p>
<p>2. MU0 회로를 완성하고 주어진 시나리오를 예상하고 결과를 분석한다.</p>
<br/>
<hr/>
<h3>Project #1 -  MIPS single cycle CPU implementation</h3>
<p>주어진 single cycle cpu 블록도를 보고, MIPS(32bits)의 J-type, I-type, R-type 명령어를 PLA AND와 PLA OR 이용해서 구현한다. PLA_AND는 명령어를 보고, OPCODE_FUNCTION_REGIMMEDIATE값을 분석하는 DECODER같은 역할을 한다. PLA_OR는 AND에 적힌 명령어의 DETAIL을 설명해주는데, RegDst, RegWrite, ALUctrl, Memwrite, Branch, Jump 등이 적혀있다.
구현 후, testbench에 맞게 결과를 분석한다. 어떤 명령어인지 분석해주는 decoder같은 PLA AND와 각 명령어에 따라 적절한 control을 해주는 PLA OR도 구현한다.</p>
<hr/>
<h3>Project #2 - MIPS Multi-Cycle CPU implementation</h3>
<p> multi-cycle이란, single cycle과 달리 latency가 가장 긴 명령어에 맞춰 cycle을 조정하지 않아도 되고, ALU나 MEM을 여러번 배치하지 않아도 되는 장점이 있다. state에 따라 
</p>
