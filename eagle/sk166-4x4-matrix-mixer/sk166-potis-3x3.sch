<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tPadExt" color="7" fill="1" visible="no" active="no"/>
<layer number="54" name="bPadExt" color="1" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="100" name="mySilk" color="14" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="supply1">
<packages>
</packages>
<symbols>
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="-5V">
<wire x1="-1.27" y1="1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="-5V" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="-5V" prefix="P-">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="-5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="anyma-lib">
<description>10 point smd solder jumper</description>
<packages>
<package name="ALPS_RK09K111_H">
<wire x1="-5" y1="0" x2="-5" y2="-6" width="0.127" layer="21"/>
<wire x1="-5" y1="-6" x2="-3" y2="-6" width="0.127" layer="21"/>
<wire x1="-3" y1="-6" x2="3" y2="-6" width="0.127" layer="21"/>
<wire x1="3" y1="-6" x2="5" y2="-6" width="0.127" layer="21"/>
<wire x1="5" y1="-6" x2="5" y2="0" width="0.127" layer="21"/>
<wire x1="5" y1="0" x2="4" y2="0" width="0.127" layer="21"/>
<wire x1="-4" y1="0" x2="-5" y2="0" width="0.127" layer="21"/>
<wire x1="-5" y1="0" x2="-5" y2="2" width="0.127" layer="21"/>
<wire x1="-5" y1="2" x2="-4" y2="2" width="0.127" layer="21"/>
<wire x1="-4" y1="2" x2="-4" y2="0" width="0.127" layer="21"/>
<wire x1="-4" y1="0" x2="4" y2="0" width="0.127" layer="21"/>
<wire x1="4" y1="0" x2="4" y2="2" width="0.127" layer="21"/>
<wire x1="4" y1="2" x2="5" y2="2" width="0.127" layer="21"/>
<wire x1="5" y1="2" x2="5" y2="0" width="0.127" layer="21"/>
<wire x1="3" y1="-6" x2="3" y2="-18" width="0.127" layer="21"/>
<wire x1="3" y1="-18" x2="-3" y2="-18" width="0.127" layer="21"/>
<wire x1="-3" y1="-18" x2="-3" y2="-6" width="0.127" layer="21"/>
<pad name="2" x="0" y="-3.25" drill="0.8" shape="long" rot="R90"/>
<pad name="1" x="-2.54" y="-3.25" drill="0.8" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="-3.25" drill="0.8" shape="long" rot="R90"/>
<text x="-5.08" y="-15.24" size="1.27" layer="21" rot="R90">&gt;NAME</text>
<text x="3.81" y="-8.89" size="1.27" layer="21" rot="R270">&gt;VALUE</text>
<hole x="4.5" y="0" drill="2.2"/>
<hole x="-4.5" y="0" drill="2.2"/>
</package>
<package name="ALPS_RK09K111">
<wire x1="-5" y1="3.81" x2="-5" y2="-2.19" width="0.127" layer="21"/>
<wire x1="-5" y1="-2.19" x2="-3" y2="-2.19" width="0.127" layer="21"/>
<wire x1="-3" y1="-2.19" x2="3" y2="-2.19" width="0.127" layer="21"/>
<wire x1="3" y1="-2.19" x2="5" y2="-2.19" width="0.127" layer="21"/>
<wire x1="5" y1="-2.19" x2="5" y2="3.81" width="0.127" layer="21"/>
<wire x1="5" y1="3.81" x2="4" y2="3.81" width="0.127" layer="21"/>
<wire x1="-4" y1="3.81" x2="-5" y2="3.81" width="0.127" layer="21"/>
<wire x1="-4" y1="3.81" x2="4" y2="3.81" width="0.127" layer="21"/>
<wire x1="3" y1="-2.19" x2="3" y2="-14.19" width="0.127" layer="21"/>
<wire x1="3" y1="-14.19" x2="-3" y2="-14.19" width="0.127" layer="21"/>
<wire x1="-3" y1="-14.19" x2="-3" y2="-2.19" width="0.127" layer="21"/>
<pad name="2" x="0" y="0.56" drill="0.8" shape="long" rot="R90"/>
<pad name="1" x="-2.54" y="0.56" drill="0.8" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0.56" drill="0.8" shape="long" rot="R90"/>
<text x="-5.08" y="-11.43" size="1.27" layer="21" rot="R90">&gt;NAME</text>
<text x="3.81" y="-5.08" size="1.27" layer="21" rot="R270">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="TPOT">
<wire x1="-0.762" y1="2.54" x2="-0.762" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="-2.54" x2="0.762" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="1.651" y2="0" width="0.1524" layer="94"/>
<wire x1="1.651" y1="0" x2="-1.8796" y2="1.7526" width="0.1524" layer="94"/>
<wire x1="0.762" y1="2.54" x2="-0.762" y2="2.54" width="0.254" layer="94"/>
<wire x1="-0.762" y1="-2.54" x2="0.762" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-0.508" x2="-3.048" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-0.508" x2="-2.032" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="-2.1597" y1="1.2939" x2="-1.7018" y2="2.2352" width="0.1524" layer="94"/>
<text x="-5.08" y="-5.08" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<pin name="S" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="E" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="W" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ALPS_RK09K111_H">
<gates>
<gate name="G$1" symbol="TPOT" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ALPS_RK09K111_H">
<connects>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="1"/>
<connect gate="G$1" pin="W" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="OHNE-FüSSE" package="ALPS_RK09K111">
<connects>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="1"/>
<connect gate="G$1" pin="W" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-molex">
<description>&lt;b&gt;Molex Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="22-23-2031">
<description>.100" (2.54mm) Center Header - 3 Pin</description>
<wire x1="-3.81" y1="3.175" x2="3.81" y2="3.175" width="0.254" layer="21"/>
<wire x1="3.81" y1="3.175" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-3.175" width="0.254" layer="21"/>
<wire x1="3.81" y1="-3.175" x2="-3.81" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-3.175" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="3.175" width="0.254" layer="21"/>
<wire x1="-3.81" y1="1.27" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1" shape="long" rot="R90"/>
<text x="-3.81" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MV">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="22-23-2031" prefix="X">
<description>.100" (2.54mm) Center Header - 3 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2031">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2031" constant="no"/>
<attribute name="OC_FARNELL" value="1462950" constant="no"/>
<attribute name="OC_NEWARK" value="30C0862" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="X1" library="con-molex" deviceset="22-23-2031" device=""/>
<part name="P+2" library="supply1" deviceset="+5V" device=""/>
<part name="P-2" library="supply1" deviceset="-5V" device=""/>
<part name="GND18" library="supply1" deviceset="GND" device=""/>
<part name="GAIN-POT10K" library="anyma-lib" deviceset="ALPS_RK09K111_H" device="OHNE-FüSSE" value="10k"/>
<part name="GND32" library="supply1" deviceset="GND" device=""/>
<part name="GAIN-POT10K1" library="anyma-lib" deviceset="ALPS_RK09K111_H" device="OHNE-FüSSE" value="10k"/>
<part name="GND42" library="supply1" deviceset="GND" device=""/>
<part name="GAIN-POT10K2" library="anyma-lib" deviceset="ALPS_RK09K111_H" device="OHNE-FüSSE" value="10k"/>
<part name="GND44" library="supply1" deviceset="GND" device=""/>
<part name="P+1" library="supply1" deviceset="+5V" device=""/>
<part name="P+3" library="supply1" deviceset="+5V" device=""/>
<part name="P+4" library="supply1" deviceset="+5V" device=""/>
<part name="X2" library="con-molex" deviceset="22-23-2031" device=""/>
<part name="X3" library="con-molex" deviceset="22-23-2031" device=""/>
<part name="P+5" library="supply1" deviceset="+5V" device=""/>
<part name="P-1" library="supply1" deviceset="-5V" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="X1" gate="-1" x="45.72" y="116.84"/>
<instance part="X1" gate="-2" x="58.42" y="121.92"/>
<instance part="X1" gate="-3" x="55.88" y="127"/>
<instance part="P+2" gate="1" x="38.1" y="129.54" rot="R90"/>
<instance part="P-2" gate="1" x="38.1" y="111.76" rot="R270"/>
<instance part="GND18" gate="1" x="38.1" y="121.92" rot="R270"/>
<instance part="GAIN-POT10K" gate="G$1" x="-60.96" y="43.18"/>
<instance part="GND32" gate="1" x="-60.96" y="35.56"/>
<instance part="GAIN-POT10K1" gate="G$1" x="-60.96" y="-17.78"/>
<instance part="GND42" gate="1" x="-60.96" y="-25.4"/>
<instance part="GAIN-POT10K2" gate="G$1" x="-60.96" y="-78.74"/>
<instance part="GND44" gate="1" x="-60.96" y="-86.36"/>
<instance part="P+1" gate="1" x="-60.96" y="50.8"/>
<instance part="P+3" gate="1" x="-60.96" y="-10.16"/>
<instance part="P+4" gate="1" x="-60.96" y="-71.12"/>
<instance part="X2" gate="-1" x="-40.64" y="33.02"/>
<instance part="X2" gate="-2" x="-40.64" y="30.48"/>
<instance part="X2" gate="-3" x="-45.72" y="27.94"/>
<instance part="X3" gate="-1" x="50.8" y="20.32"/>
<instance part="X3" gate="-2" x="63.5" y="25.4"/>
<instance part="X3" gate="-3" x="60.96" y="30.48"/>
<instance part="P+5" gate="1" x="43.18" y="33.02" rot="R90"/>
<instance part="P-1" gate="1" x="43.18" y="15.24" rot="R270"/>
<instance part="GND1" gate="1" x="43.18" y="25.4" rot="R270"/>
</instances>
<busses>
</busses>
<nets>
<net name="+5V" class="0">
<segment>
<pinref part="P+2" gate="1" pin="+5V"/>
<pinref part="X1" gate="-3" pin="S"/>
<wire x1="53.34" y1="127" x2="40.64" y2="129.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GAIN-POT10K" gate="G$1" pin="E"/>
<pinref part="P+1" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="GAIN-POT10K1" gate="G$1" pin="E"/>
<pinref part="P+3" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="GAIN-POT10K2" gate="G$1" pin="E"/>
<pinref part="P+4" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="P+5" gate="1" pin="+5V"/>
<pinref part="X3" gate="-3" pin="S"/>
<wire x1="58.42" y1="30.48" x2="45.72" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="-5V" class="0">
<segment>
<pinref part="P-2" gate="1" pin="-5V"/>
<pinref part="X1" gate="-1" pin="S"/>
<wire x1="43.18" y1="116.84" x2="40.64" y2="111.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P-1" gate="1" pin="-5V"/>
<pinref part="X3" gate="-1" pin="S"/>
<wire x1="48.26" y1="20.32" x2="45.72" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="X1" gate="-2" pin="S"/>
<pinref part="GND18" gate="1" pin="GND"/>
<wire x1="55.88" y1="121.92" x2="40.64" y2="121.92" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GAIN-POT10K" gate="G$1" pin="S"/>
<pinref part="GND32" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GAIN-POT10K1" gate="G$1" pin="S"/>
<pinref part="GND42" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GAIN-POT10K2" gate="G$1" pin="S"/>
<pinref part="GND44" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="X3" gate="-2" pin="S"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="60.96" y1="25.4" x2="45.72" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="X2" gate="-1" pin="S"/>
<wire x1="-43.18" y1="33.02" x2="-53.34" y2="43.18" width="0.1524" layer="91"/>
<pinref part="GAIN-POT10K" gate="G$1" pin="W"/>
<wire x1="-53.34" y1="43.18" x2="-55.88" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X2" gate="-2" pin="S"/>
<wire x1="-43.18" y1="30.48" x2="-53.34" y2="30.48" width="0.1524" layer="91"/>
<pinref part="GAIN-POT10K1" gate="G$1" pin="W"/>
<wire x1="-53.34" y1="30.48" x2="-53.34" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="-15.24" x2="-55.88" y2="-17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="X2" gate="-3" pin="S"/>
<wire x1="-48.26" y1="27.94" x2="-48.26" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="-73.66" x2="-53.34" y2="-78.74" width="0.1524" layer="91"/>
<pinref part="GAIN-POT10K2" gate="G$1" pin="W"/>
<wire x1="-53.34" y1="-78.74" x2="-55.88" y2="-78.74" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
