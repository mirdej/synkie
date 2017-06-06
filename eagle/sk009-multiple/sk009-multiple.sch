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
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
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
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
<layer number="100" name="mySilk" color="14" fill="1" visible="no" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="synkie">
<packages>
<package name="R0805">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R1206">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="2" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="1" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="SO08">
<description>&lt;b&gt;Small Outline Package 8&lt;/b&gt;&lt;br&gt;
NS Package M08A</description>
<wire x1="2.4" y1="1.9" x2="2.4" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.4" x2="2.4" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.9" x2="-2.4" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="-1.9" x2="-2.4" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="-1.4" x2="-2.4" y2="1.9" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="1.9" x2="2.4" y2="1.9" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.4" x2="-2.4" y2="-1.4" width="0.2032" layer="51"/>
<smd name="2" x="-0.635" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="7" x="-0.635" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="1" x="-1.905" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="3" x="0.635" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="4" x="1.905" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="8" x="-1.905" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="6" x="0.635" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="5" x="1.905" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<text x="-2.667" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.937" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.15" y1="-3.1" x2="-1.66" y2="-2" layer="51"/>
<rectangle x1="-0.88" y1="-3.1" x2="-0.39" y2="-2" layer="51"/>
<rectangle x1="0.39" y1="-3.1" x2="0.88" y2="-2" layer="51"/>
<rectangle x1="1.66" y1="-3.1" x2="2.15" y2="-2" layer="51"/>
<rectangle x1="1.66" y1="2" x2="2.15" y2="3.1" layer="51"/>
<rectangle x1="0.39" y1="2" x2="0.88" y2="3.1" layer="51"/>
<rectangle x1="-0.88" y1="2" x2="-0.39" y2="3.1" layer="51"/>
<rectangle x1="-2.15" y1="2" x2="-1.66" y2="3.1" layer="51"/>
</package>
<package name="C0805">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C1206">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="3,17/1,1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.524" y1="-1.016" x2="1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-1.524" x2="1.016" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-1.524" x2="-1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.524" x2="-1.524" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.016" x2="-1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.524" x2="-1.016" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.016" y1="1.524" x2="1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="1.524" x2="1.524" y2="1.016" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="3.175" shape="octagon"/>
<text x="-1.524" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
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
<package name="CT3528">
<description>&lt;b&gt;TANTALUM CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="1.983" x2="2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-1.983" x2="-2.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-1.983" x2="-2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="1.983" x2="2.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-1.637" y1="-1.383" x2="-1.637" y2="1.383" width="0.2032" layer="51"/>
<wire x1="-1.778" y1="1.016" x2="-1.778" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="1.637" y1="1.383" x2="-1.637" y2="1.383" width="0.2032" layer="51"/>
<wire x1="1.637" y1="-1.383" x2="-1.637" y2="-1.383" width="0.2032" layer="51"/>
<wire x1="1.778" y1="1.016" x2="1.778" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="1.637" y1="-1.383" x2="1.637" y2="1.383" width="0.2032" layer="51"/>
<wire x1="-0.68" y1="0" x2="-1.31" y2="0" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.3" x2="-1" y2="-0.33" width="0.2032" layer="51"/>
<smd name="+" x="-1.5" y="0" dx="2" dy="2.2" layer="1"/>
<smd name="-" x="1.5" y="0" dx="2" dy="2.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
</package>
<package name="E5-10,5">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5.08 mm, diameter 10.5 mm</description>
<wire x1="-1.143" y1="0" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-0.889" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-1.143" x2="-0.254" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-1.143" x2="-0.254" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.143" x2="-0.889" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.143" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.143" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.651" x2="-3.81" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="1.27" x2="-4.191" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0" x2="1.651" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="0" x2="-1.143" y2="0" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="5.08" width="0.1524" layer="21"/>
<pad name="+" x="-2.54" y="0" drill="1.016" diameter="2.54"/>
<pad name="-" x="2.54" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="4.699" y="2.7432" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.1242" y="-3.2258" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.143" x2="0.889" y2="1.143" layer="21"/>
</package>
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
<symbol name="R-EU">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="0V">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="0V" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="C-EU">
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<text x="1.524" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-4.699" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="OPAMP-1">
<wire x1="-3.81" y1="3.175" x2="-3.81" y2="1.905" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="0" width="0.4064" layer="94"/>
<text x="2.54" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="-IN" x="-7.62" y="-2.54" visible="pad" length="short" direction="in"/>
<pin name="+IN" x="-7.62" y="2.54" visible="pad" length="short" direction="in"/>
<pin name="OUT" x="7.62" y="0" visible="pad" length="short" direction="out" rot="R180"/>
</symbol>
<symbol name="V+-">
<text x="-2.54" y="-1.27" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="5.08" size="1.778" layer="95">+5V</text>
<text x="2.54" y="-6.35" size="1.778" layer="95">-5V</text>
<pin name="+5V" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
<pin name="-5V" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
</symbol>
<symbol name="PAD">
<wire x1="-1.016" y1="1.016" x2="1.016" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.016" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<text x="-1.143" y="1.8542" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.143" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
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
<symbol name="CPOL">
<wire x1="-1.524" y1="-0.889" x2="1.524" y2="-0.889" width="0.254" layer="94"/>
<wire x1="1.524" y1="-0.889" x2="1.524" y2="0" width="0.254" layer="94"/>
<wire x1="-1.524" y1="0" x2="-1.524" y2="-0.889" width="0.254" layer="94"/>
<wire x1="-1.524" y1="0" x2="1.524" y2="0" width="0.254" layer="94"/>
<text x="1.143" y="0.4826" size="1.778" layer="95">&gt;NAME</text>
<text x="-0.5842" y="0.4064" size="1.27" layer="94" rot="R90">+</text>
<text x="1.143" y="-4.5974" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-2.54" x2="1.651" y2="-1.651" layer="94"/>
<pin name="-" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="+" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
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
<deviceset name="R-EU_" prefix="R" uservalue="yes">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="R-EU" x="0" y="0"/>
</gates>
<devices>
<device name="R0805" package="R0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1206" package="R1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="0V" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="0V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C-EU" prefix="C" uservalue="yes">
<description>&lt;B&gt;CAPACITOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="C-EU" x="0" y="0"/>
</gates>
<devices>
<device name="C0805" package="C0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1206" package="C1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MAX4392ESA">
<gates>
<gate name="G$1" symbol="OPAMP-1" x="0" y="20.32" swaplevel="1"/>
<gate name="G$2" symbol="OPAMP-1" x="0" y="5.08" swaplevel="1"/>
<gate name="G$3" symbol="V+-" x="-7.62" y="-20.32"/>
</gates>
<devices>
<device name="" package="SO08">
<connects>
<connect gate="G$1" pin="+IN" pad="3"/>
<connect gate="G$1" pin="-IN" pad="2"/>
<connect gate="G$1" pin="OUT" pad="1"/>
<connect gate="G$2" pin="+IN" pad="5"/>
<connect gate="G$2" pin="-IN" pad="6"/>
<connect gate="G$2" pin="OUT" pad="7"/>
<connect gate="G$3" pin="+5V" pad="8"/>
<connect gate="G$3" pin="-5V" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="3,17/1,1" prefix="PAD" uservalue="yes">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="PAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="3,17/1,1">
<connects>
<connect gate="1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CON-POWER" prefix="X">
<description>.100" (2.54mm) Center Header - 3 Pin</description>
<gates>
<gate name="_-5V" symbol="MV" x="0" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="_GND" symbol="M" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="_+5V" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2031">
<connects>
<connect gate="_+5V" pin="S" pad="3"/>
<connect gate="_-5V" pin="S" pad="1"/>
<connect gate="_GND" pin="S" pad="2"/>
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
<deviceset name="CPOL-EU" prefix="C" uservalue="yes">
<description>&lt;B&gt;POLARIZED CAPACITOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="CPOL" x="0" y="0"/>
</gates>
<devices>
<device name="CT3528" package="CT3528">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="" package="E5-10,5">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
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
<part name="IC1" library="synkie" deviceset="MAX4392ESA" device=""/>
<part name="P+26" library="synkie" deviceset="+5V" device=""/>
<part name="P-21" library="synkie" deviceset="-5V" device=""/>
<part name="C51" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="C52" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND50" library="synkie" deviceset="0V" device=""/>
<part name="R10" library="synkie" deviceset="R-EU_" device="R0805" value="200"/>
<part name="R11" library="synkie" deviceset="R-EU_" device="R0805" value="200"/>
<part name="GND54" library="synkie" deviceset="0V" device=""/>
<part name="OUT2" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="R12" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="SUPPLY" library="synkie" deviceset="CON-POWER" device=""/>
<part name="C54" library="synkie" deviceset="CPOL-EU" device="CT3528"/>
<part name="C55" library="synkie" deviceset="CPOL-EU" device="CT3528"/>
<part name="P+28" library="synkie" deviceset="+5V" device=""/>
<part name="P-23" library="synkie" deviceset="-5V" device=""/>
<part name="GND45" library="synkie" deviceset="0V" device=""/>
<part name="R1" library="synkie" deviceset="R-EU_" device="R0805" value="200"/>
<part name="R2" library="synkie" deviceset="R-EU_" device="R0805" value="200"/>
<part name="GND1" library="synkie" deviceset="0V" device=""/>
<part name="OUT1" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="R3" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="INPUT" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="IC2" library="synkie" deviceset="MAX4392ESA" device=""/>
<part name="P+1" library="synkie" deviceset="+5V" device=""/>
<part name="P-1" library="synkie" deviceset="-5V" device=""/>
<part name="C1" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="C2" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND2" library="synkie" deviceset="0V" device=""/>
<part name="R4" library="synkie" deviceset="R-EU_" device="R0805" value="200"/>
<part name="R5" library="synkie" deviceset="R-EU_" device="R0805" value="200"/>
<part name="GND3" library="synkie" deviceset="0V" device=""/>
<part name="OUT3" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="R6" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="R7" library="synkie" deviceset="R-EU_" device="R0805" value="200"/>
<part name="R8" library="synkie" deviceset="R-EU_" device="R0805" value="200"/>
<part name="GND4" library="synkie" deviceset="0V" device=""/>
<part name="OUT4" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="R9" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="R0" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="GND5" library="synkie" deviceset="0V" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="G$2" x="281.94" y="60.96"/>
<instance part="IC1" gate="G$3" x="218.44" y="58.42"/>
<instance part="P+26" gate="1" x="218.44" y="71.12"/>
<instance part="P-21" gate="1" x="218.44" y="45.72"/>
<instance part="C51" gate="G$1" x="213.36" y="66.04" rot="R270"/>
<instance part="C52" gate="G$1" x="213.36" y="50.8" rot="R270"/>
<instance part="GND50" gate="1" x="208.28" y="45.72"/>
<instance part="R10" gate="G$1" x="266.7" y="53.34"/>
<instance part="R11" gate="G$1" x="284.48" y="53.34"/>
<instance part="GND54" gate="1" x="259.08" y="50.8"/>
<instance part="OUT2" gate="1" x="307.34" y="60.96" rot="MR0"/>
<instance part="R12" gate="G$1" x="299.72" y="60.96"/>
<instance part="SUPPLY" gate="_-5V" x="208.28" y="-38.1" rot="MR0"/>
<instance part="SUPPLY" gate="_GND" x="208.28" y="-35.56" rot="MR0"/>
<instance part="SUPPLY" gate="_+5V" x="208.28" y="-33.02" rot="MR0"/>
<instance part="C54" gate="G$1" x="218.44" y="-38.1" rot="MR90"/>
<instance part="C55" gate="G$1" x="215.9" y="-33.02" rot="MR270"/>
<instance part="P+28" gate="1" x="210.82" y="-27.94"/>
<instance part="P-23" gate="1" x="210.82" y="-43.18"/>
<instance part="GND45" gate="1" x="223.52" y="-43.18"/>
<instance part="R1" gate="G$1" x="266.7" y="30.48"/>
<instance part="R2" gate="G$1" x="284.48" y="30.48"/>
<instance part="GND1" gate="1" x="259.08" y="27.94"/>
<instance part="OUT1" gate="1" x="307.34" y="38.1" rot="MR0"/>
<instance part="R3" gate="G$1" x="299.72" y="38.1"/>
<instance part="IC1" gate="G$1" x="281.94" y="38.1"/>
<instance part="INPUT" gate="1" x="251.46" y="88.9" rot="MR0"/>
<instance part="IC2" gate="G$2" x="281.94" y="10.16"/>
<instance part="IC2" gate="G$3" x="218.44" y="7.62"/>
<instance part="P+1" gate="1" x="218.44" y="20.32"/>
<instance part="P-1" gate="1" x="218.44" y="-5.08"/>
<instance part="C1" gate="G$1" x="213.36" y="15.24" rot="R270"/>
<instance part="C2" gate="G$1" x="213.36" y="0" rot="R270"/>
<instance part="GND2" gate="1" x="208.28" y="-5.08"/>
<instance part="R4" gate="G$1" x="266.7" y="2.54"/>
<instance part="R5" gate="G$1" x="284.48" y="2.54"/>
<instance part="GND3" gate="1" x="259.08" y="0"/>
<instance part="OUT3" gate="1" x="307.34" y="10.16" rot="MR0"/>
<instance part="R6" gate="G$1" x="299.72" y="10.16"/>
<instance part="R7" gate="G$1" x="266.7" y="-20.32"/>
<instance part="R8" gate="G$1" x="284.48" y="-20.32"/>
<instance part="GND4" gate="1" x="259.08" y="-22.86"/>
<instance part="OUT4" gate="1" x="307.34" y="-12.7" rot="MR0"/>
<instance part="R9" gate="G$1" x="299.72" y="-12.7"/>
<instance part="IC2" gate="G$1" x="281.94" y="-12.7"/>
<instance part="R0" gate="G$1" x="243.84" y="88.9"/>
<instance part="GND5" gate="1" x="238.76" y="86.36"/>
</instances>
<busses>
</busses>
<nets>
<net name="+5V" class="0">
<segment>
<pinref part="P+26" gate="1" pin="+5V"/>
<wire x1="218.44" y1="66.04" x2="218.44" y2="68.58" width="0.1524" layer="91"/>
<pinref part="C51" gate="G$1" pin="1"/>
<wire x1="215.9" y1="66.04" x2="218.44" y2="66.04" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$3" pin="+5V"/>
<junction x="218.44" y="66.04"/>
</segment>
<segment>
<pinref part="P+28" gate="1" pin="+5V"/>
<pinref part="C55" gate="G$1" pin="+"/>
<wire x1="210.82" y1="-30.48" x2="210.82" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="210.82" y1="-33.02" x2="213.36" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="SUPPLY" gate="_+5V" pin="S"/>
<junction x="210.82" y="-33.02"/>
</segment>
<segment>
<pinref part="P+1" gate="1" pin="+5V"/>
<wire x1="218.44" y1="15.24" x2="218.44" y2="17.78" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="215.9" y1="15.24" x2="218.44" y2="15.24" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$3" pin="+5V"/>
<junction x="218.44" y="15.24"/>
</segment>
</net>
<net name="-5V" class="0">
<segment>
<pinref part="P-21" gate="1" pin="-5V"/>
<wire x1="218.44" y1="50.8" x2="218.44" y2="48.26" width="0.1524" layer="91"/>
<pinref part="C52" gate="G$1" pin="1"/>
<wire x1="215.9" y1="50.8" x2="218.44" y2="50.8" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$3" pin="-5V"/>
<junction x="218.44" y="50.8"/>
</segment>
<segment>
<pinref part="P-23" gate="1" pin="-5V"/>
<pinref part="SUPPLY" gate="_-5V" pin="S"/>
<wire x1="210.82" y1="-40.64" x2="210.82" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="C54" gate="G$1" pin="-"/>
<wire x1="213.36" y1="-38.1" x2="210.82" y2="-38.1" width="0.1524" layer="91"/>
<junction x="210.82" y="-38.1"/>
</segment>
<segment>
<pinref part="P-1" gate="1" pin="-5V"/>
<wire x1="218.44" y1="0" x2="218.44" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="215.9" y1="0" x2="218.44" y2="0" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$3" pin="-5V"/>
<junction x="218.44" y="0"/>
</segment>
</net>
<net name="0V" class="0">
<segment>
<pinref part="C52" gate="G$1" pin="2"/>
<wire x1="208.28" y1="66.04" x2="208.28" y2="50.8" width="0.1524" layer="91"/>
<pinref part="GND50" gate="1" pin="0V"/>
<wire x1="208.28" y1="48.26" x2="208.28" y2="50.8" width="0.1524" layer="91"/>
<junction x="208.28" y="50.8"/>
<pinref part="C51" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="R10" gate="G$1" pin="1"/>
<pinref part="GND54" gate="1" pin="0V"/>
<wire x1="261.62" y1="53.34" x2="259.08" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY" gate="_GND" pin="S"/>
<pinref part="GND45" gate="1" pin="0V"/>
<wire x1="210.82" y1="-35.56" x2="223.52" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-35.56" x2="223.52" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="C55" gate="G$1" pin="-"/>
<wire x1="223.52" y1="-38.1" x2="223.52" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-33.02" x2="223.52" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-33.02" x2="223.52" y2="-35.56" width="0.1524" layer="91"/>
<junction x="223.52" y="-35.56"/>
<pinref part="C54" gate="G$1" pin="+"/>
<wire x1="220.98" y1="-38.1" x2="223.52" y2="-38.1" width="0.1524" layer="91"/>
<junction x="223.52" y="-38.1"/>
</segment>
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="GND1" gate="1" pin="0V"/>
<wire x1="261.62" y1="30.48" x2="259.08" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="208.28" y1="15.24" x2="208.28" y2="0" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="0V"/>
<wire x1="208.28" y1="-2.54" x2="208.28" y2="0" width="0.1524" layer="91"/>
<junction x="208.28" y="0"/>
<pinref part="C1" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="R4" gate="G$1" pin="1"/>
<pinref part="GND3" gate="1" pin="0V"/>
<wire x1="261.62" y1="2.54" x2="259.08" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R7" gate="G$1" pin="1"/>
<pinref part="GND4" gate="1" pin="0V"/>
<wire x1="261.62" y1="-20.32" x2="259.08" y2="-20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R0" gate="G$1" pin="1"/>
<pinref part="GND5" gate="1" pin="0V"/>
</segment>
</net>
<net name="N$72" class="0">
<segment>
<pinref part="R10" gate="G$1" pin="2"/>
<pinref part="R11" gate="G$1" pin="1"/>
<wire x1="271.78" y1="53.34" x2="274.32" y2="53.34" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$2" pin="-IN"/>
<wire x1="274.32" y1="53.34" x2="279.4" y2="53.34" width="0.1524" layer="91"/>
<wire x1="274.32" y1="58.42" x2="274.32" y2="53.34" width="0.1524" layer="91"/>
<junction x="274.32" y="53.34"/>
</segment>
</net>
<net name="N$73" class="0">
<segment>
<pinref part="R11" gate="G$1" pin="2"/>
<wire x1="289.56" y1="53.34" x2="292.1" y2="53.34" width="0.1524" layer="91"/>
<wire x1="292.1" y1="53.34" x2="292.1" y2="60.96" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$2" pin="OUT"/>
<wire x1="292.1" y1="60.96" x2="289.56" y2="60.96" width="0.1524" layer="91"/>
<pinref part="R12" gate="G$1" pin="1"/>
<wire x1="294.64" y1="60.96" x2="292.1" y2="60.96" width="0.1524" layer="91"/>
<junction x="292.1" y="60.96"/>
</segment>
</net>
<net name="N$89" class="0">
<segment>
<pinref part="OUT2" gate="1" pin="P"/>
<pinref part="R12" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="271.78" y1="30.48" x2="274.32" y2="30.48" width="0.1524" layer="91"/>
<wire x1="274.32" y1="30.48" x2="279.4" y2="30.48" width="0.1524" layer="91"/>
<wire x1="274.32" y1="35.56" x2="274.32" y2="30.48" width="0.1524" layer="91"/>
<junction x="274.32" y="30.48"/>
<pinref part="IC1" gate="G$1" pin="-IN"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="289.56" y1="30.48" x2="292.1" y2="30.48" width="0.1524" layer="91"/>
<wire x1="292.1" y1="30.48" x2="292.1" y2="38.1" width="0.1524" layer="91"/>
<wire x1="292.1" y1="38.1" x2="289.56" y2="38.1" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="294.64" y1="38.1" x2="292.1" y2="38.1" width="0.1524" layer="91"/>
<junction x="292.1" y="38.1"/>
<pinref part="IC1" gate="G$1" pin="OUT"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="OUT1" gate="1" pin="P"/>
<pinref part="R3" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="271.78" y1="2.54" x2="274.32" y2="2.54" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$2" pin="-IN"/>
<wire x1="274.32" y1="2.54" x2="279.4" y2="2.54" width="0.1524" layer="91"/>
<wire x1="274.32" y1="7.62" x2="274.32" y2="2.54" width="0.1524" layer="91"/>
<junction x="274.32" y="2.54"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="289.56" y1="2.54" x2="292.1" y2="2.54" width="0.1524" layer="91"/>
<wire x1="292.1" y1="2.54" x2="292.1" y2="10.16" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$2" pin="OUT"/>
<wire x1="292.1" y1="10.16" x2="289.56" y2="10.16" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="294.64" y1="10.16" x2="292.1" y2="10.16" width="0.1524" layer="91"/>
<junction x="292.1" y="10.16"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="OUT3" gate="1" pin="P"/>
<pinref part="R6" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="2"/>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="271.78" y1="-20.32" x2="274.32" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-20.32" x2="279.4" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-15.24" x2="274.32" y2="-20.32" width="0.1524" layer="91"/>
<junction x="274.32" y="-20.32"/>
<pinref part="IC2" gate="G$1" pin="-IN"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="289.56" y1="-20.32" x2="292.1" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="292.1" y1="-20.32" x2="292.1" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="292.1" y1="-12.7" x2="289.56" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="R9" gate="G$1" pin="1"/>
<wire x1="294.64" y1="-12.7" x2="292.1" y2="-12.7" width="0.1524" layer="91"/>
<junction x="292.1" y="-12.7"/>
<pinref part="IC2" gate="G$1" pin="OUT"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="OUT4" gate="1" pin="P"/>
<pinref part="R9" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="+IN"/>
<wire x1="274.32" y1="-10.16" x2="248.92" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-10.16" x2="248.92" y2="12.7" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$2" pin="+IN"/>
<wire x1="248.92" y1="12.7" x2="248.92" y2="40.64" width="0.1524" layer="91"/>
<wire x1="274.32" y1="12.7" x2="248.92" y2="12.7" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="+IN"/>
<pinref part="INPUT" gate="1" pin="P"/>
<wire x1="274.32" y1="40.64" x2="248.92" y2="40.64" width="0.1524" layer="91"/>
<wire x1="248.92" y1="40.64" x2="248.92" y2="63.5" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$2" pin="+IN"/>
<wire x1="248.92" y1="63.5" x2="248.92" y2="88.9" width="0.1524" layer="91"/>
<wire x1="274.32" y1="63.5" x2="248.92" y2="63.5" width="0.1524" layer="91"/>
<pinref part="R0" gate="G$1" pin="2"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="104,1,2.54,12.7,U2,GND,0V,,,"/>
<approved hash="104,1,43.18,27.94,U2,VCC,+5V,,,"/>
<approved hash="104,1,99.06,-53.34,IC1P,V+,+5V,,,"/>
<approved hash="104,1,99.06,-68.58,IC1P,V-,-5V,,,"/>
<approved hash="104,1,114.3,-53.34,IC2P,V+,+5V,,,"/>
<approved hash="104,1,114.3,-68.58,IC2P,V-,-5V,,,"/>
<approved hash="104,1,261.62,-25.4,IC3P,VEE,-5V,,,"/>
<approved hash="104,1,266.7,-25.4,IC3P,GND,0V,,,"/>
<approved hash="104,1,266.7,-10.16,IC3P,VCC,+5V,,,"/>
<approved hash="104,1,175.26,-40.64,IC4P,VSS,-5V,,,"/>
<approved hash="104,1,175.26,-25.4,IC4P,VDD,+5V,,,"/>
</errors>
</schematic>
</drawing>
</eagle>
