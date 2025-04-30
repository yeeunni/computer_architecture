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
<p> 첫 번째로 gtkwave 분석을 통해, random access와 insertion sort 알고리즘을 분석한다. 그 다음으로는 네 가지의 조건에 따라 cache design을 바꾸며 각 벤치마크에 대해 어떤 식으로 적용되는지, unified/split, associativity, l2의 size, block size, cache size가 AMAT에 어떤 영향을 끼치는 지 직접 벤치마크를 돌려보며 확인하는 프로젝트이다. 프로젝트를 진행하면서, IJPEG의 경우 branch 명령어가 다른 두 벤치마크에 비
해 작은 비율로 이루어졌다는 것을 확인할 수 있었고, 각각의 data cache access 및 instruction cache access를 통해 CC1의 경우가 data cache에 가장 access를 많이하는 것을 확인할 수 있었다. 이번 프로젝트를 진행하면서 AMAT을 계산하며 은근 hit time이 영향을 많이 준다는 것을 확인할 수 있었다. 또한, branch나 loop 명령어가 하드웨어가 수행하기에 빠르지 않다는 점을 깨닫고, 코딩의 중요성을 깨달았다.
</p>
<hr/>
