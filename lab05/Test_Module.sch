<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="I_EN" />
        <signal name="XLXN_10(1:0)" />
        <signal name="I_Instr(31:0)" />
        <signal name="I_Instr(31:26)" />
        <signal name="I_Instr(5:0)" />
        <signal name="O_RegDst" />
        <signal name="O_Jump" />
        <signal name="O_Beq" />
        <signal name="O_Bne" />
        <signal name="O_MemRead" />
        <signal name="O_MemtoReg" />
        <signal name="O_MemWrite" />
        <signal name="O_ALUSrc" />
        <signal name="O_RegWrite" />
        <signal name="O_ALUCtl(3:0)" />
        <port polarity="Input" name="I_EN" />
        <port polarity="Input" name="I_Instr(31:0)" />
        <port polarity="Output" name="O_RegDst" />
        <port polarity="Output" name="O_Jump" />
        <port polarity="Output" name="O_Beq" />
        <port polarity="Output" name="O_Bne" />
        <port polarity="Output" name="O_MemRead" />
        <port polarity="Output" name="O_MemtoReg" />
        <port polarity="Output" name="O_MemWrite" />
        <port polarity="Output" name="O_ALUSrc" />
        <port polarity="Output" name="O_RegWrite" />
        <port polarity="Output" name="O_ALUCtl(3:0)" />
        <blockdef name="ACU">
            <timestamp>2018-4-22T13:21:15</timestamp>
            <rect width="400" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="464" y="-108" height="24" />
            <line x2="528" y1="-96" y2="-96" x1="464" />
        </blockdef>
        <blockdef name="DEC">
            <timestamp>2018-4-22T13:21:7</timestamp>
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
        <block symbolname="ACU" name="XLXI_1">
            <blockpin signalname="XLXN_10(1:0)" name="I_ACU_ALUOp(1:0)" />
            <blockpin signalname="I_Instr(5:0)" name="I_ACU_Funct(5:0)" />
            <blockpin signalname="O_ALUCtl(3:0)" name="O_ACU_CTL(3:0)" />
        </block>
        <block symbolname="DEC" name="XLXI_2">
            <blockpin signalname="I_EN" name="I_DEC_EN" />
            <blockpin signalname="I_Instr(31:26)" name="I_DEC_Opcode(5:0)" />
            <blockpin signalname="O_RegDst" name="O_DEC_RegDst" />
            <blockpin signalname="O_Jump" name="O_DEC_Jump" />
            <blockpin signalname="O_Beq" name="O_DEC_Beq" />
            <blockpin signalname="O_Bne" name="O_DEC_Bne" />
            <blockpin signalname="O_MemRead" name="O_DEC_MemRead" />
            <blockpin signalname="O_MemtoReg" name="O_DEC_MemtoReg" />
            <blockpin signalname="O_MemWrite" name="O_DEC_MemWrite" />
            <blockpin signalname="O_ALUSrc" name="O_DEC_ALUSrc" />
            <blockpin signalname="O_RegWrite" name="O_DEC_RegWrite" />
            <blockpin signalname="XLXN_10(1:0)" name="O_DEC_ALUOp(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="I_EN">
            <wire x2="560" y1="160" y2="160" x1="144" />
        </branch>
        <iomarker fontsize="28" x="144" y="160" name="I_EN" orien="R180" />
        <instance x="560" y="768" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_10(1:0)">
            <wire x2="496" y1="864" y2="976" x1="496" />
            <wire x2="560" y1="976" y2="976" x1="496" />
            <wire x2="1136" y1="864" y2="864" x1="496" />
            <wire x2="1136" y1="736" y2="736" x1="1120" />
            <wire x2="1136" y1="736" y2="864" x1="1136" />
        </branch>
        <instance x="560" y="1072" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="224" y="304" name="I_Instr(31:0)" orien="R180" />
        <branch name="I_Instr(31:0)">
            <wire x2="256" y1="304" y2="304" x1="224" />
            <wire x2="256" y1="304" y2="736" x1="256" />
            <wire x2="256" y1="736" y2="1040" x1="256" />
            <wire x2="256" y1="1040" y2="1088" x1="256" />
        </branch>
        <bustap x2="352" y1="736" y2="736" x1="256" />
        <branch name="I_Instr(31:26)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="480" y="736" type="branch" />
            <wire x2="480" y1="736" y2="736" x1="352" />
            <wire x2="560" y1="736" y2="736" x1="480" />
        </branch>
        <bustap x2="352" y1="1040" y2="1040" x1="256" />
        <branch name="I_Instr(5:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="416" y="1040" type="branch" />
            <wire x2="416" y1="1040" y2="1040" x1="352" />
            <wire x2="560" y1="1040" y2="1040" x1="416" />
        </branch>
        <branch name="O_RegDst">
            <wire x2="1232" y1="160" y2="160" x1="1120" />
        </branch>
        <branch name="O_Jump">
            <wire x2="1232" y1="224" y2="224" x1="1120" />
        </branch>
        <branch name="O_Beq">
            <wire x2="1232" y1="288" y2="288" x1="1120" />
        </branch>
        <branch name="O_Bne">
            <wire x2="1232" y1="352" y2="352" x1="1120" />
        </branch>
        <branch name="O_MemRead">
            <wire x2="1232" y1="416" y2="416" x1="1120" />
        </branch>
        <branch name="O_MemtoReg">
            <wire x2="1232" y1="480" y2="480" x1="1120" />
        </branch>
        <branch name="O_MemWrite">
            <wire x2="1232" y1="544" y2="544" x1="1120" />
        </branch>
        <branch name="O_ALUSrc">
            <wire x2="1232" y1="608" y2="608" x1="1120" />
        </branch>
        <branch name="O_RegWrite">
            <wire x2="1232" y1="672" y2="672" x1="1120" />
        </branch>
        <branch name="O_ALUCtl(3:0)">
            <wire x2="1232" y1="976" y2="976" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="1232" y="160" name="O_RegDst" orien="R0" />
        <iomarker fontsize="28" x="1232" y="224" name="O_Jump" orien="R0" />
        <iomarker fontsize="28" x="1232" y="288" name="O_Beq" orien="R0" />
        <iomarker fontsize="28" x="1232" y="352" name="O_Bne" orien="R0" />
        <iomarker fontsize="28" x="1232" y="416" name="O_MemRead" orien="R0" />
        <iomarker fontsize="28" x="1232" y="480" name="O_MemtoReg" orien="R0" />
        <iomarker fontsize="28" x="1232" y="544" name="O_MemWrite" orien="R0" />
        <iomarker fontsize="28" x="1232" y="608" name="O_ALUSrc" orien="R0" />
        <iomarker fontsize="28" x="1232" y="672" name="O_RegWrite" orien="R0" />
        <iomarker fontsize="28" x="1232" y="976" name="O_ALUCtl(3:0)" orien="R0" />
    </sheet>
</drawing>