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
<p> multi-cycle이란, single cycle과 달리 latency가 가장 긴 명령어에 맞춰 cycle을 조정하지 않아도 되고, ALU나 MEM을 여러번 배치하지 않아도 되는 장점이 있다. state(fetch, decode, exec,mem, wb등)를 나누어 해당 state에서 어떤 동작을 하면 되는지 control 신호에 맞춰 on/off를 시키면서 설계를 한다. project1와 같이 명령어를 구현한 뒤, testbench로 결과를 분석한다.
</p>
<hr/>
<h3>Project #3 - Pipeline architecture </h3>
<p>이 프로젝트는 MIPS 파이프라인 구조에서 발생하는 data hazard, control hazard, 그리고 그에 따른 nop 삽입 최적화 및 forwarding 기법 적용을 통해 명령어 실행 효율을 개선하는 실험이다. Assembly 코드를 분석하고 nop을 최소화하여 성능을 향상시키는 것이 목표였으며, forwarding 제어 신호를 적용해 총 사이클 수를 줄이는 데 성공하였다.</p>
<hr/>
<h3>Project #4 - Cache design </h3>
<p>이번 프로젝트는 캐시 설계와 성능 분석을 다룬다. GTKWAVE를 활용해 random access와 insertion sort의 캐시 hit/miss 차이를 분석하고, 시뮬레이션을 통해 unified/split 구조, L1/L2 크기 변화, associativity, block size가 AMAT(Average Memory Access Time)에 미치는 영향을 실험하였다. 각 벤치마크에 최적의 캐시 구조를 도출하며, locality와 hit time 간의 trade-off를 고려해 캐시 성능을 최적화한다.
</p>
<hr/>
