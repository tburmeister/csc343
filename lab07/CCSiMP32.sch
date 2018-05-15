<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <attr value="Never" name="RenameBusIO" />
    <netlist>
        <signal name="XLXN_15" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_62(1:0)" />
        <signal name="XLXN_76" />
        <signal name="XLXN_90(31:0)" />
        <signal name="XLXN_94" />
        <signal name="XLXN_101" />
        <signal name="XLXN_111" />
        <signal name="Instruction(31:0)" />
        <signal name="XLXN_114" />
        <signal name="XLXN_116(3:0)" />
        <signal name="XLXN_117(31:0)" />
        <signal name="I_EN" />
        <signal name="I_CLK" />
        <signal name="XLXN_128(31:0)" />
        <signal name="XLXN_129(31:0)" />
        <signal name="XLXN_132" />
        <signal name="XLXN_134(31:0)" />
        <signal name="XLXN_136(31:0)" />
        <signal name="Instruction(15:0)" />
        <signal name="XLXN_138(31:0)" />
        <signal name="XLXN_140(31:0)" />
        <signal name="XLXN_144(4:0)" />
        <signal name="XLXN_145" />
        <signal name="Instruction(20:16)" />
        <signal name="Instruction(15:11)" />
        <signal name="XLXN_149(31:0)" />
        <signal name="XLXN_150(31:0)" />
        <signal name="XLXN_152(31:0)" />
        <signal name="XLXN_153(31:0)" />
        <signal name="XLXN_154(31:0)" />
        <signal name="XLXN_155" />
        <signal name="Instruction(25:0)" />
        <signal name="XLXN_158(31:0)" />
        <signal name="XLXN_159" />
        <signal name="XLXN_161" />
        <signal name="XLXN_162" />
        <signal name="XLXN_163" />
        <signal name="XLXN_164" />
        <signal name="XLXN_165" />
        <signal name="XLXN_166" />
        <signal name="Instruction(31:26)" />
        <signal name="Instruction(5:0)" />
        <signal name="XLXN_201" />
        <signal name="XLXN_204" />
        <signal name="XLXN_206" />
        <signal name="XLXN_208" />
        <signal name="Instruction(25:21)" />
        <signal name="XLXN_211" />
        <signal name="XLXN_212" />
        <signal name="XLXN_213" />
        <signal name="XLXN_214" />
        <signal name="XLXN_215" />
        <port polarity="Input" name="I_EN" />
        <port polarity="Input" name="I_CLK" />
        <blockdef name="ACU">
            <timestamp>2018-5-13T19:25:29</timestamp>
            <rect width="400" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="464" y="-108" height="24" />
            <line x2="528" y1="-96" y2="-96" x1="464" />
        </blockdef>
        <blockdef name="DEC">
            <timestamp>2018-5-13T19:25:41</timestamp>
            <rect width="432" x="64" y="-640" height="640" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="560" y1="-608" y2="-608" x1="496" />
            <line x2="560" y1="-544" y2="-544" x1="496" />
            <line x2="560" y1="-480" y2="-480" x1="496" />
            <line x2="560" y1="-416" y2="-416" x1="496" />
            <line x2="560" y1="-352" y2="-352" x1="496" />
            <line x2="560" y1="-288" y2="-288" x1="496" />
            <line x2="560" y1="-224" y2="-224" x1="496" />
            <line x2="560" y1="-160" y2="-160" x1="496" />
            <line x2="560" y1="-96" y2="-96" x1="496" />
            <rect width="64" x="496" y="-44" height="24" />
            <line x2="560" y1="-32" y2="-32" x1="496" />
        </blockdef>
        <blockdef name="FSM">
            <timestamp>2018-5-13T19:26:2</timestamp>
            <rect width="336" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="RAM">
            <timestamp>2018-5-13T19:26:12</timestamp>
            <rect width="432" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-300" height="24" />
            <line x2="560" y1="-288" y2="-288" x1="496" />
        </blockdef>
        <blockdef name="REG">
            <timestamp>2018-5-13T19:26:19</timestamp>
            <rect width="496" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="560" y="-364" height="24" />
            <line x2="624" y1="-352" y2="-352" x1="560" />
            <rect width="64" x="560" y="-44" height="24" />
            <line x2="624" y1="-32" y2="-32" x1="560" />
        </blockdef>
        <blockdef name="ROM">
            <timestamp>2018-5-13T19:26:26</timestamp>
            <rect width="432" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-108" height="24" />
            <line x2="560" y1="-96" y2="-96" x1="496" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="PC">
            <timestamp>2018-5-14T0:0:16</timestamp>
            <rect width="304" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2018-5-14T23:57:35</timestamp>
            <rect width="368" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="496" y1="-224" y2="-224" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <blockdef name="MUX32">
            <timestamp>2018-5-14T18:53:59</timestamp>
            <rect width="368" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-172" height="24" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
        </blockdef>
        <blockdef name="EXT">
            <timestamp>2018-5-13T19:25:49</timestamp>
            <rect width="352" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="MUX5">
            <timestamp>2018-5-14T18:33:19</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="256" x="64" y="-256" height="320" />
        </blockdef>
        <blockdef name="ADD1">
            <timestamp>2018-5-14T23:56:33</timestamp>
            <rect width="384" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-44" height="24" />
            <line x2="512" y1="-32" y2="-32" x1="448" />
        </blockdef>
        <blockdef name="ADD2">
            <timestamp>2018-5-14T23:56:41</timestamp>
            <rect width="384" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-108" height="24" />
            <line x2="512" y1="-96" y2="-96" x1="448" />
        </blockdef>
        <blockdef name="SHIFT">
            <timestamp>2018-5-13T19:26:33</timestamp>
            <rect width="400" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="464" y="-44" height="24" />
            <line x2="528" y1="-32" y2="-32" x1="464" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="SHIFT2">
            <timestamp>2018-5-15T2:5:50</timestamp>
            <rect width="400" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="464" y="-44" height="24" />
            <line x2="528" y1="-32" y2="-32" x1="464" />
        </blockdef>
        <block symbolname="ACU" name="XLXI_1">
            <blockpin signalname="XLXN_62(1:0)" name="I_ACU_ALUOp(1:0)" />
            <blockpin signalname="Instruction(5:0)" name="I_ACU_Funct(5:0)" />
            <blockpin signalname="XLXN_116(3:0)" name="O_ACU_CTL(3:0)" />
        </block>
        <block symbolname="DEC" name="XLXI_2">
            <blockpin signalname="XLXN_15" name="I_DEC_EN" />
            <blockpin signalname="Instruction(31:26)" name="I_DEC_Opcode(5:0)" />
            <blockpin signalname="XLXN_145" name="O_DEC_RegDst" />
            <blockpin signalname="XLXN_155" name="O_DEC_Jump" />
            <blockpin signalname="XLXN_162" name="O_DEC_Beq" />
            <blockpin signalname="XLXN_163" name="O_DEC_Bne" />
            <blockpin signalname="XLXN_204" name="O_DEC_MemRead" />
            <blockpin signalname="XLXN_201" name="O_DEC_MemtoReg" />
            <blockpin signalname="XLXN_94" name="O_DEC_MemWrite" />
            <blockpin signalname="XLXN_132" name="O_DEC_ALUSrc" />
            <blockpin signalname="XLXN_24" name="O_DEC_RegWrite" />
            <blockpin signalname="XLXN_62(1:0)" name="O_DEC_ALUOp(1:0)" />
        </block>
        <block symbolname="FSM" name="XLXI_3">
            <blockpin signalname="I_EN" name="I_FSM_EN" />
            <blockpin signalname="I_CLK" name="I_FSM_CLK" />
            <blockpin signalname="Instruction(31:0)" name="I_FSM_INST(31:0)" />
            <blockpin signalname="XLXN_211" name="O_FSM_IF" />
            <blockpin signalname="XLXN_15" name="O_FSM_ID" />
            <blockpin signalname="XLXN_23" name="O_FSM_EX" />
            <blockpin signalname="XLXN_213" name="O_FSM_ME" />
            <blockpin signalname="XLXN_215" name="O_FSM_WB" />
        </block>
        <block symbolname="RAM" name="XLXI_4">
            <blockpin signalname="XLXN_213" name="I_RAM_EN" />
            <blockpin signalname="XLXN_204" name="I_RAM_RE" />
            <blockpin signalname="XLXN_94" name="I_RAM_WE" />
            <blockpin signalname="XLXN_128(31:0)" name="I_RAM_ADDR(31:0)" />
            <blockpin signalname="XLXN_134(31:0)" name="I_RAM_DATA(31:0)" />
            <blockpin signalname="XLXN_129(31:0)" name="O_RAM_DATA(31:0)" />
        </block>
        <block symbolname="REG" name="XLXI_5">
            <blockpin signalname="XLXN_111" name="I_REG_EN" />
            <blockpin signalname="XLXN_76" name="I_REG_WE" />
            <blockpin signalname="Instruction(25:21)" name="I_REG_SEL_RS(4:0)" />
            <blockpin signalname="Instruction(20:16)" name="I_REG_SEL_RT(4:0)" />
            <blockpin signalname="XLXN_144(4:0)" name="I_REG_SEL_RD(4:0)" />
            <blockpin signalname="XLXN_117(31:0)" name="I_REG_DATA_RD(31:0)" />
            <blockpin signalname="XLXN_138(31:0)" name="O_REG_DATA_A(31:0)" />
            <blockpin signalname="XLXN_134(31:0)" name="O_REG_DATA_B(31:0)" />
        </block>
        <block symbolname="ROM" name="XLXI_6">
            <blockpin signalname="XLXN_211" name="I_ROM_EN" />
            <blockpin signalname="XLXN_90(31:0)" name="I_ROM_ADDR(31:0)" />
            <blockpin signalname="Instruction(31:0)" name="O_ROM_DATA(31:0)" />
        </block>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="XLXN_215" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_111" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="XLXN_24" name="I0" />
            <blockpin signalname="XLXN_215" name="I1" />
            <blockpin signalname="XLXN_76" name="O" />
        </block>
        <block symbolname="PC" name="XLXI_9">
            <blockpin signalname="XLXN_23" name="I_PC_UPDATE" />
            <blockpin signalname="XLXN_154(31:0)" name="I_PC(31:0)" />
            <blockpin signalname="XLXN_90(31:0)" name="O_PC(31:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_10">
            <blockpin signalname="XLXN_23" name="I_ALU_EN" />
            <blockpin signalname="XLXN_116(3:0)" name="I_ALU_CTL(3:0)" />
            <blockpin signalname="XLXN_138(31:0)" name="I_ALU_A(31:0)" />
            <blockpin signalname="XLXN_140(31:0)" name="I_ALU_B(31:0)" />
            <blockpin signalname="XLXN_159" name="O_ALU_Zero" />
            <blockpin signalname="XLXN_128(31:0)" name="O_ALU_Out(31:0)" />
        </block>
        <block symbolname="MUX32" name="XLXI_12">
            <blockpin signalname="XLXN_201" name="I_MUX_Sel" />
            <blockpin signalname="XLXN_128(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_129(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="XLXN_117(31:0)" name="O_MUX_Out(31:0)" />
        </block>
        <block symbolname="MUX32" name="XLXI_13">
            <blockpin signalname="XLXN_132" name="I_MUX_Sel" />
            <blockpin signalname="XLXN_134(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_136(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="XLXN_140(31:0)" name="O_MUX_Out(31:0)" />
        </block>
        <block symbolname="EXT" name="XLXI_14">
            <blockpin signalname="Instruction(15:0)" name="I_EXT_16(15:0)" />
            <blockpin signalname="XLXN_136(31:0)" name="O_EXT_32(31:0)" />
        </block>
        <block symbolname="MUX5" name="XLXI_15">
            <blockpin signalname="XLXN_145" name="I_MUX_Sel" />
            <blockpin signalname="Instruction(20:16)" name="I_MUX_0(4:0)" />
            <blockpin signalname="Instruction(15:11)" name="I_MUX_1(4:0)" />
            <blockpin signalname="XLXN_144(4:0)" name="O_MUX_Out(4:0)" />
        </block>
        <block symbolname="ADD1" name="XLXI_16">
            <blockpin signalname="XLXN_90(31:0)" name="I_ADD1_A(31:0)" />
            <blockpin signalname="XLXN_150(31:0)" name="O_ADD1_Out(31:0)" />
        </block>
        <block symbolname="ADD2" name="XLXI_17">
            <blockpin signalname="XLXN_150(31:0)" name="I_ADD2_A(31:0)" />
            <blockpin signalname="XLXN_149(31:0)" name="I_ADD2_B(31:0)" />
            <blockpin signalname="XLXN_158(31:0)" name="O_ADD2_Out(31:0)" />
        </block>
        <block symbolname="SHIFT" name="XLXI_18">
            <blockpin signalname="XLXN_136(31:0)" name="I_SHIFT_32(31:0)" />
            <blockpin signalname="XLXN_149(31:0)" name="O_SHIFT_32(31:0)" />
        </block>
        <block symbolname="MUX32" name="XLXI_19">
            <blockpin signalname="XLXN_166" name="I_MUX_Sel" />
            <blockpin signalname="XLXN_150(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_158(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="XLXN_153(31:0)" name="O_MUX_Out(31:0)" />
        </block>
        <block symbolname="MUX32" name="XLXI_20">
            <blockpin signalname="XLXN_155" name="I_MUX_Sel" />
            <blockpin signalname="XLXN_153(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_152(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="XLXN_154(31:0)" name="O_MUX_Out(31:0)" />
        </block>
        <block symbolname="and2" name="XLXI_22">
            <blockpin signalname="XLXN_162" name="I0" />
            <blockpin signalname="XLXN_159" name="I1" />
            <blockpin signalname="XLXN_164" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_23">
            <blockpin signalname="XLXN_163" name="I0" />
            <blockpin signalname="XLXN_161" name="I1" />
            <blockpin signalname="XLXN_165" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_24">
            <blockpin signalname="XLXN_165" name="I0" />
            <blockpin signalname="XLXN_164" name="I1" />
            <blockpin signalname="XLXN_166" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_25">
            <blockpin signalname="XLXN_159" name="I" />
            <blockpin signalname="XLXN_161" name="O" />
        </block>
        <block symbolname="SHIFT2" name="XLXI_26">
            <blockpin signalname="Instruction(25:0)" name="I_SHIFT_26(25:0)" />
            <blockpin signalname="XLXN_152(31:0)" name="O_SHIFT_32(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="XLXN_62(1:0)">
            <wire x2="2144" y1="1520" y2="1520" x1="1728" />
            <wire x2="2144" y1="1424" y2="1520" x1="2144" />
            <wire x2="2544" y1="1424" y2="1424" x1="2144" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="640" y1="112" y2="208" x1="640" />
            <wire x2="992" y1="208" y2="208" x1="640" />
            <wire x2="992" y1="208" y2="944" x1="992" />
            <wire x2="1168" y1="944" y2="944" x1="992" />
            <wire x2="640" y1="208" y2="1648" x1="640" />
            <wire x2="1344" y1="1648" y2="1648" x1="640" />
            <wire x2="1696" y1="112" y2="112" x1="640" />
            <wire x2="1696" y1="112" y2="224" x1="1696" />
            <wire x2="1696" y1="224" y2="224" x1="1632" />
        </branch>
        <branch name="XLXN_90(31:0)">
            <wire x2="64" y1="752" y2="752" x1="16" />
            <wire x2="16" y1="752" y2="1008" x1="16" />
            <wire x2="80" y1="1008" y2="1008" x1="16" />
            <wire x2="560" y1="1008" y2="1008" x1="80" />
            <wire x2="560" y1="1008" y2="1056" x1="560" />
            <wire x2="80" y1="1008" y2="2608" x1="80" />
            <wire x2="560" y1="1056" y2="1056" x1="544" />
        </branch>
        <instance x="1168" y="1552" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_94">
            <wire x2="3088" y1="1328" y2="1328" x1="1728" />
            <wire x2="3088" y1="1328" y2="1792" x1="3088" />
            <wire x2="3808" y1="1792" y2="1792" x1="3088" />
        </branch>
        <instance x="1168" y="448" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_111">
            <wire x2="1232" y1="1968" y2="2064" x1="1232" />
            <wire x2="1248" y1="2064" y2="2064" x1="1232" />
            <wire x2="1680" y1="1968" y2="1968" x1="1232" />
            <wire x2="1680" y1="1680" y2="1680" x1="1600" />
            <wire x2="1680" y1="1680" y2="1968" x1="1680" />
        </branch>
        <instance x="2560" y="1136" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_116(3:0)">
            <wire x2="2544" y1="832" y2="976" x1="2544" />
            <wire x2="2560" y1="976" y2="976" x1="2544" />
            <wire x2="3152" y1="832" y2="832" x1="2544" />
            <wire x2="3152" y1="832" y2="1424" x1="3152" />
            <wire x2="3152" y1="1424" y2="1424" x1="3072" />
        </branch>
        <branch name="XLXN_117(31:0)">
            <wire x2="1248" y1="2384" y2="2384" x1="1232" />
            <wire x2="1232" y1="2384" y2="2464" x1="1232" />
            <wire x2="2800" y1="2464" y2="2464" x1="1232" />
        </branch>
        <branch name="I_EN">
            <wire x2="1168" y1="160" y2="160" x1="192" />
        </branch>
        <branch name="I_CLK">
            <wire x2="1168" y1="288" y2="288" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="160" name="I_EN" orien="R180" />
        <iomarker fontsize="28" x="192" y="288" name="I_CLK" orien="R180" />
        <branch name="Instruction(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="416" type="branch" />
            <wire x2="976" y1="416" y2="416" x1="928" />
            <wire x2="1168" y1="416" y2="416" x1="976" />
        </branch>
        <instance x="1248" y="2416" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_76">
            <wire x2="1200" y1="2128" y2="2496" x1="1200" />
            <wire x2="1904" y1="2496" y2="2496" x1="1200" />
            <wire x2="1248" y1="2128" y2="2128" x1="1200" />
            <wire x2="1904" y1="1872" y2="1872" x1="1600" />
            <wire x2="1904" y1="1872" y2="2496" x1="1904" />
        </branch>
        <branch name="XLXN_128(31:0)">
            <wire x2="3200" y1="1104" y2="1104" x1="3056" />
            <wire x2="3200" y1="1104" y2="1840" x1="3200" />
            <wire x2="3200" y1="1840" y2="1856" x1="3200" />
            <wire x2="3808" y1="1856" y2="1856" x1="3200" />
            <wire x2="3344" y1="1840" y2="1840" x1="3200" />
            <wire x2="3344" y1="1840" y2="2528" x1="3344" />
            <wire x2="3344" y1="2528" y2="2528" x1="3296" />
        </branch>
        <branch name="XLXN_129(31:0)">
            <wire x2="4384" y1="2592" y2="2592" x1="3296" />
            <wire x2="4384" y1="1664" y2="1664" x1="4368" />
            <wire x2="4384" y1="1664" y2="2592" x1="4384" />
        </branch>
        <branch name="XLXN_201">
            <wire x2="3360" y1="1264" y2="1264" x1="1728" />
            <wire x2="3360" y1="1264" y2="2464" x1="3360" />
            <wire x2="3360" y1="2464" y2="2464" x1="3296" />
        </branch>
        <branch name="XLXN_132">
            <wire x2="2048" y1="1392" y2="1392" x1="1728" />
            <wire x2="2048" y1="1392" y2="1808" x1="2048" />
            <wire x2="2368" y1="1808" y2="1808" x1="2048" />
        </branch>
        <branch name="XLXN_134(31:0)">
            <wire x2="1888" y1="2384" y2="2384" x1="1872" />
            <wire x2="2848" y1="2384" y2="2384" x1="1888" />
            <wire x2="1888" y1="2368" y2="2384" x1="1888" />
            <wire x2="1968" y1="2368" y2="2368" x1="1888" />
            <wire x2="1968" y1="1872" y2="2368" x1="1968" />
            <wire x2="2368" y1="1872" y2="1872" x1="1968" />
            <wire x2="2848" y1="1920" y2="2384" x1="2848" />
            <wire x2="3808" y1="1920" y2="1920" x1="2848" />
        </branch>
        <instance x="1312" y="2608" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_136(31:0)">
            <wire x2="1920" y1="2576" y2="2576" x1="1792" />
            <wire x2="1856" y1="544" y2="1856" x1="1856" />
            <wire x2="1920" y1="1856" y2="1856" x1="1856" />
            <wire x2="1920" y1="1856" y2="2576" x1="1920" />
            <wire x2="2144" y1="1856" y2="1856" x1="1920" />
            <wire x2="2144" y1="1856" y2="1936" x1="2144" />
            <wire x2="2368" y1="1936" y2="1936" x1="2144" />
            <wire x2="2624" y1="544" y2="544" x1="1856" />
        </branch>
        <branch name="Instruction(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="2576" type="branch" />
            <wire x2="1072" y1="2576" y2="2576" x1="1024" />
            <wire x2="1312" y1="2576" y2="2576" x1="1072" />
        </branch>
        <branch name="XLXN_138(31:0)">
            <wire x2="2016" y1="2064" y2="2064" x1="1872" />
            <wire x2="2016" y1="1040" y2="2064" x1="2016" />
            <wire x2="2560" y1="1040" y2="1040" x1="2016" />
        </branch>
        <branch name="XLXN_140(31:0)">
            <wire x2="2560" y1="1104" y2="1104" x1="2544" />
            <wire x2="2544" y1="1104" y2="1216" x1="2544" />
            <wire x2="3136" y1="1216" y2="1216" x1="2544" />
            <wire x2="3136" y1="1216" y2="1808" x1="3136" />
            <wire x2="3136" y1="1808" y2="1808" x1="2864" />
        </branch>
        <instance x="1344" y="1776" name="XLXI_7" orien="R0" />
        <instance x="1344" y="1968" name="XLXI_8" orien="R0" />
        <branch name="XLXN_24">
            <wire x2="1280" y1="1760" y2="1904" x1="1280" />
            <wire x2="1344" y1="1904" y2="1904" x1="1280" />
            <wire x2="1744" y1="1760" y2="1760" x1="1280" />
            <wire x2="1744" y1="1456" y2="1456" x1="1728" />
            <wire x2="1744" y1="1456" y2="1760" x1="1744" />
        </branch>
        <branch name="XLXN_144(4:0)">
            <wire x2="1248" y1="2320" y2="2320" x1="1008" />
        </branch>
        <branch name="XLXN_145">
            <wire x2="560" y1="1984" y2="2064" x1="560" />
            <wire x2="624" y1="2064" y2="2064" x1="560" />
            <wire x2="1808" y1="1984" y2="1984" x1="560" />
            <wire x2="1808" y1="944" y2="944" x1="1728" />
            <wire x2="1808" y1="944" y2="1984" x1="1808" />
        </branch>
        <branch name="Instruction(20:16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="592" y="2128" type="branch" />
            <wire x2="592" y1="2128" y2="2128" x1="560" />
            <wire x2="624" y1="2128" y2="2128" x1="592" />
        </branch>
        <branch name="Instruction(15:11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="608" y="2192" type="branch" />
            <wire x2="608" y1="2192" y2="2192" x1="560" />
            <wire x2="624" y1="2192" y2="2192" x1="608" />
        </branch>
        <instance x="64" y="784" name="XLXI_16" orien="R0">
        </instance>
        <branch name="XLXN_149(31:0)">
            <wire x2="2624" y1="384" y2="384" x1="2608" />
            <wire x2="2608" y1="384" y2="496" x1="2608" />
            <wire x2="3216" y1="496" y2="496" x1="2608" />
            <wire x2="3216" y1="496" y2="544" x1="3216" />
            <wire x2="3216" y1="544" y2="544" x1="3152" />
        </branch>
        <branch name="XLXN_150(31:0)">
            <wire x2="1408" y1="752" y2="752" x1="576" />
            <wire x2="1408" y1="528" y2="752" x1="1408" />
            <wire x2="1920" y1="528" y2="528" x1="1408" />
            <wire x2="2272" y1="528" y2="528" x1="1920" />
            <wire x2="3744" y1="256" y2="256" x1="1920" />
            <wire x2="1920" y1="256" y2="528" x1="1920" />
            <wire x2="2272" y1="320" y2="528" x1="2272" />
            <wire x2="2624" y1="320" y2="320" x1="2272" />
        </branch>
        <branch name="XLXN_152(31:0)">
            <wire x2="4336" y1="256" y2="256" x1="4320" />
            <wire x2="4320" y1="256" y2="352" x1="4320" />
            <wire x2="4896" y1="352" y2="352" x1="4320" />
            <wire x2="4896" y1="352" y2="432" x1="4896" />
            <wire x2="4896" y1="432" y2="432" x1="4832" />
        </branch>
        <branch name="XLXN_153(31:0)">
            <wire x2="4336" y1="192" y2="192" x1="4240" />
        </branch>
        <branch name="XLXN_154(31:0)">
            <wire x2="112" y1="1120" y2="1120" x1="48" />
            <wire x2="48" y1="1120" y2="1616" x1="48" />
            <wire x2="4848" y1="1616" y2="1616" x1="48" />
            <wire x2="4848" y1="128" y2="128" x1="4832" />
            <wire x2="4848" y1="128" y2="1616" x1="4848" />
        </branch>
        <branch name="XLXN_158(31:0)">
            <wire x2="3744" y1="320" y2="320" x1="3136" />
        </branch>
        <branch name="XLXN_162">
            <wire x2="1792" y1="1072" y2="1072" x1="1728" />
            <wire x2="1792" y1="768" y2="1072" x1="1792" />
            <wire x2="3632" y1="768" y2="768" x1="1792" />
        </branch>
        <branch name="XLXN_163">
            <wire x2="1744" y1="1136" y2="1136" x1="1728" />
            <wire x2="1744" y1="1136" y2="1152" x1="1744" />
            <wire x2="3600" y1="1152" y2="1152" x1="1744" />
            <wire x2="3600" y1="928" y2="1152" x1="3600" />
            <wire x2="3632" y1="928" y2="928" x1="3600" />
        </branch>
        <branch name="Instruction(31:26)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1520" type="branch" />
            <wire x2="1024" y1="1520" y2="1520" x1="976" />
            <wire x2="1168" y1="1520" y2="1520" x1="1024" />
        </branch>
        <branch name="Instruction(5:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1488" type="branch" />
            <wire x2="2288" y1="1488" y2="1488" x1="2224" />
            <wire x2="2544" y1="1488" y2="1488" x1="2288" />
        </branch>
        <instance x="4336" y="288" name="XLXI_20" orien="R0">
        </instance>
        <branch name="XLXN_155">
            <wire x2="1744" y1="1008" y2="1008" x1="1728" />
            <wire x2="4336" y1="128" y2="128" x1="1744" />
            <wire x2="1744" y1="128" y2="1008" x1="1744" />
        </branch>
        <branch name="Instruction(25:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4160" y="432" type="branch" />
            <wire x2="4160" y1="432" y2="432" x1="4096" />
            <wire x2="4304" y1="432" y2="432" x1="4160" />
        </branch>
        <instance x="3744" y="352" name="XLXI_19" orien="R0">
        </instance>
        <branch name="XLXN_166">
            <wire x2="3728" y1="96" y2="192" x1="3728" />
            <wire x2="3744" y1="192" y2="192" x1="3728" />
            <wire x2="4288" y1="96" y2="96" x1="3728" />
            <wire x2="4288" y1="96" y2="528" x1="4288" />
            <wire x2="4288" y1="528" y2="528" x1="3904" />
        </branch>
        <instance x="2624" y="416" name="XLXI_17" orien="R0">
        </instance>
        <instance x="2624" y="576" name="XLXI_18" orien="R0">
        </instance>
        <branch name="XLXN_165">
            <wire x2="3648" y1="560" y2="560" x1="3568" />
            <wire x2="3568" y1="560" y2="624" x1="3568" />
            <wire x2="4016" y1="624" y2="624" x1="3568" />
            <wire x2="4016" y1="624" y2="896" x1="4016" />
            <wire x2="4016" y1="896" y2="896" x1="3888" />
        </branch>
        <instance x="3632" y="992" name="XLXI_23" orien="R0" />
        <branch name="XLXN_161">
            <wire x2="3632" y1="864" y2="864" x1="3616" />
        </branch>
        <instance x="3632" y="832" name="XLXI_22" orien="R0" />
        <branch name="XLXN_159">
            <wire x2="3312" y1="912" y2="912" x1="3056" />
            <wire x2="3344" y1="912" y2="912" x1="3312" />
            <wire x2="3632" y1="704" y2="704" x1="3312" />
            <wire x2="3312" y1="704" y2="912" x1="3312" />
            <wire x2="3344" y1="864" y2="912" x1="3344" />
            <wire x2="3392" y1="864" y2="864" x1="3344" />
        </branch>
        <instance x="3648" y="624" name="XLXI_24" orien="R0" />
        <branch name="XLXN_164">
            <wire x2="3648" y1="496" y2="496" x1="3584" />
            <wire x2="3584" y1="496" y2="640" x1="3584" />
            <wire x2="3904" y1="640" y2="640" x1="3584" />
            <wire x2="3904" y1="640" y2="736" x1="3904" />
            <wire x2="3904" y1="736" y2="736" x1="3888" />
        </branch>
        <instance x="3392" y="896" name="XLXI_25" orien="R0" />
        <instance x="3808" y="1952" name="XLXI_4" orien="R0">
        </instance>
        <instance x="3296" y="2624" name="XLXI_12" orien="M0">
        </instance>
        <instance x="2544" y="1520" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2368" y="1968" name="XLXI_13" orien="R0">
        </instance>
        <instance x="112" y="1152" name="XLXI_9" orien="R0">
        </instance>
        <instance x="4304" y="464" name="XLXI_26" orien="R0">
        </instance>
        <branch name="XLXN_204">
            <wire x2="1792" y1="1200" y2="1200" x1="1728" />
            <wire x2="1792" y1="1200" y2="1728" x1="1792" />
            <wire x2="3808" y1="1728" y2="1728" x1="1792" />
        </branch>
        <instance x="80" y="2640" name="XLXI_6" orien="R0">
        </instance>
        <branch name="Instruction(31:0)">
            <wire x2="656" y1="2544" y2="2544" x1="640" />
            <wire x2="656" y1="2544" y2="2704" x1="656" />
        </branch>
        <instance x="624" y="2288" name="XLXI_15" orien="R0">
        </instance>
        <branch name="Instruction(25:21)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="2192" type="branch" />
            <wire x2="1152" y1="2192" y2="2192" x1="1104" />
            <wire x2="1248" y1="2192" y2="2192" x1="1152" />
        </branch>
        <branch name="Instruction(20:16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="2256" type="branch" />
            <wire x2="1120" y1="2256" y2="2256" x1="1104" />
            <wire x2="1248" y1="2256" y2="2256" x1="1120" />
        </branch>
        <branch name="XLXN_211">
            <wire x2="16" y1="1904" y2="2544" x1="16" />
            <wire x2="80" y1="2544" y2="2544" x1="16" />
            <wire x2="704" y1="1904" y2="1904" x1="16" />
            <wire x2="1712" y1="96" y2="96" x1="704" />
            <wire x2="1712" y1="96" y2="160" x1="1712" />
            <wire x2="704" y1="96" y2="1904" x1="704" />
            <wire x2="1712" y1="160" y2="160" x1="1632" />
        </branch>
        <branch name="XLXN_213">
            <wire x2="1776" y1="352" y2="352" x1="1632" />
            <wire x2="1776" y1="352" y2="1664" x1="1776" />
            <wire x2="3808" y1="1664" y2="1664" x1="1776" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="48" y1="80" y2="1056" x1="48" />
            <wire x2="112" y1="1056" y2="1056" x1="48" />
            <wire x2="1792" y1="80" y2="80" x1="48" />
            <wire x2="2096" y1="80" y2="80" x1="1792" />
            <wire x2="2096" y1="80" y2="288" x1="2096" />
            <wire x2="2096" y1="288" y2="912" x1="2096" />
            <wire x2="2560" y1="912" y2="912" x1="2096" />
            <wire x2="2096" y1="288" y2="288" x1="1632" />
        </branch>
        <branch name="XLXN_215">
            <wire x2="624" y1="848" y2="1840" x1="624" />
            <wire x2="624" y1="1840" y2="1856" x1="624" />
            <wire x2="976" y1="1856" y2="1856" x1="624" />
            <wire x2="1344" y1="1840" y2="1840" x1="624" />
            <wire x2="1712" y1="848" y2="848" x1="624" />
            <wire x2="1344" y1="1712" y2="1712" x1="976" />
            <wire x2="976" y1="1712" y2="1856" x1="976" />
            <wire x2="1712" y1="416" y2="416" x1="1632" />
            <wire x2="1712" y1="416" y2="848" x1="1712" />
        </branch>
    </sheet>
</drawing>