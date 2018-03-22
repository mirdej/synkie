<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
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
<package name="1X02">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.6162" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
</package>
<package name="1X02/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-3.175" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.445" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
</package>
<package name="SOT23">
<description>&lt;B&gt;DIODE&lt;/B&gt;</description>
<wire x1="1.4224" y1="0.6604" x2="1.4224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="1.4224" y1="-0.6604" x2="-1.4224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="-1.4224" y1="-0.6604" x2="-1.4224" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-1.4224" y1="0.6604" x2="1.4224" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-1.4224" y1="-0.1524" x2="-1.4224" y2="0.6604" width="0.1524" layer="21"/>
<wire x1="-1.4224" y1="0.6604" x2="-0.8636" y2="0.6604" width="0.1524" layer="21"/>
<wire x1="1.4224" y1="0.6604" x2="1.4224" y2="-0.1524" width="0.1524" layer="21"/>
<wire x1="0.8636" y1="0.6604" x2="1.4224" y2="0.6604" width="0.1524" layer="21"/>
<smd name="3" x="0" y="1.1" dx="1" dy="1.4" layer="1"/>
<smd name="2" x="0.95" y="-1.1" dx="1" dy="1.4" layer="1"/>
<smd name="1" x="-0.95" y="-1.1" dx="1" dy="1.4" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2286" y1="0.7112" x2="0.2286" y2="1.2954" layer="51"/>
<rectangle x1="0.7112" y1="-1.2954" x2="1.1684" y2="-0.7112" layer="51"/>
<rectangle x1="-1.1684" y1="-1.2954" x2="-0.7112" y2="-0.7112" layer="51"/>
</package>
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
<package name="SO08-EXP">
<wire x1="2.4" y1="1.9" x2="2.4" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.4" x2="2.4" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.9" x2="-2.4" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="-1.9" x2="-2.4" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="-1.4" x2="-2.4" y2="1.9" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="1.9" x2="2.4" y2="1.9" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.4" x2="-2.4" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="-2.4077" y1="0.8161" x2="-2.4077" y2="-0.4539" width="0.127" layer="21" curve="-180"/>
<smd name="2" x="-0.635" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="7" x="-0.635" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="1" x="-1.905" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="3" x="0.635" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="4" x="1.905" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="8" x="-1.905" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="6" x="0.635" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="5" x="1.905" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="EXP" x="0" y="0" dx="3.81" dy="1.9304" layer="1"/>
<text x="-3.175" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.445" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.1501" y1="-3.1001" x2="-1.6599" y2="-2" layer="51"/>
<rectangle x1="-0.8801" y1="-3.1001" x2="-0.3899" y2="-2" layer="51"/>
<rectangle x1="0.3899" y1="-3.1001" x2="0.8801" y2="-2" layer="51"/>
<rectangle x1="1.6599" y1="-3.1001" x2="2.1501" y2="-2" layer="51"/>
<rectangle x1="1.6599" y1="2" x2="2.1501" y2="3.1001" layer="51"/>
<rectangle x1="0.3899" y1="2" x2="0.8801" y2="3.1001" layer="51"/>
<rectangle x1="-0.8801" y1="2" x2="-0.3899" y2="3.1001" layer="51"/>
<rectangle x1="-2.1501" y1="2" x2="-1.6599" y2="3.1001" layer="51"/>
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
<package name="22-23-2041">
<description>.100" (2.54mm) Center Header - 4 Pin</description>
<wire x1="-5.08" y1="3.175" x2="5.08" y2="3.175" width="0.254" layer="21"/>
<wire x1="5.08" y1="3.175" x2="5.08" y2="1.27" width="0.254" layer="21"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-3.175" width="0.254" layer="21"/>
<wire x1="5.08" y1="-3.175" x2="-5.08" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-5.08" y1="-3.175" x2="-5.08" y2="1.27" width="0.254" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="3.175" width="0.254" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="5.08" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="1" shape="long" rot="R90"/>
<text x="-5.08" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="DIL08">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="5.08" y1="2.921" x2="-5.08" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.921" x2="5.08" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.921" x2="5.08" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="2.921" x2="-5.08" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.921" x2="-5.08" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.016" x2="-5.08" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-3.81" y="-3.81" drill="0.8128" diameter="1.27" rot="R90"/>
<pad name="2" x="-1.27" y="-3.81" drill="0.8128" diameter="1.27" rot="R90"/>
<pad name="7" x="-1.27" y="3.81" drill="0.8128" diameter="1.27" rot="R90"/>
<pad name="8" x="-3.81" y="3.81" drill="0.8128" diameter="1.27" rot="R90"/>
<pad name="3" x="1.27" y="-3.81" drill="0.8128" diameter="1.27" rot="R90"/>
<pad name="4" x="3.81" y="-3.81" drill="0.8128" diameter="1.27" rot="R90"/>
<pad name="6" x="1.27" y="3.81" drill="0.8128" diameter="1.27" rot="R90"/>
<pad name="5" x="3.81" y="3.81" drill="0.8128" diameter="1.27" rot="R90"/>
<text x="-5.334" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-3.556" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="DIL16">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="10.16" y1="2.921" x2="-10.16" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.016" x2="-10.16" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-10.541" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SO16">
<description>&lt;b&gt;Small Outline package&lt;/b&gt; 150 mil</description>
<wire x1="4.699" y1="1.9558" x2="-4.699" y2="1.9558" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.9558" x2="5.08" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.5748" x2="-4.699" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.9558" x2="5.08" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.5748" x2="-4.699" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="-1.9558" x2="4.699" y2="-1.9558" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.5748" x2="5.08" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.5748" x2="-5.08" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.508" x2="-5.08" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-5.08" y1="-1.6002" x2="5.08" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="16" x="-4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="15" x="-3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="-1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="-0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="-0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="-4.064" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-5.461" y="-2.032" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-0.889" y1="1.9558" x2="-0.381" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="-3.0988" x2="-4.191" y2="-1.9558" layer="51"/>
<rectangle x1="-3.429" y1="-3.0988" x2="-2.921" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="-3.0734" x2="-1.651" y2="-1.9304" layer="51"/>
<rectangle x1="-0.889" y1="-3.0988" x2="-0.381" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="1.9558" x2="-1.651" y2="3.0988" layer="51"/>
<rectangle x1="-3.429" y1="1.9558" x2="-2.921" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="1.9558" x2="-4.191" y2="3.0988" layer="51"/>
<rectangle x1="0.381" y1="-3.0988" x2="0.889" y2="-1.9558" layer="51"/>
<rectangle x1="1.651" y1="-3.0988" x2="2.159" y2="-1.9558" layer="51"/>
<rectangle x1="2.921" y1="-3.0988" x2="3.429" y2="-1.9558" layer="51"/>
<rectangle x1="4.191" y1="-3.0988" x2="4.699" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="1.9558" x2="0.889" y2="3.0988" layer="51"/>
<rectangle x1="1.651" y1="1.9558" x2="2.159" y2="3.0988" layer="51"/>
<rectangle x1="2.921" y1="1.9558" x2="3.429" y2="3.0988" layer="51"/>
<rectangle x1="4.191" y1="1.9558" x2="4.699" y2="3.0988" layer="51"/>
</package>
<package name="DIL14">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="8.89" y1="2.921" x2="-8.89" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="8.89" y1="2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="2.921" x2="-8.89" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="-8.89" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="1.016" x2="-8.89" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="0" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="0" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="-2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-9.271" y="-3.048" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-6.731" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SO14">
<description>&lt;b&gt;Small Outline package&lt;/b&gt; 150 mil</description>
<wire x1="4.064" y1="1.9558" x2="-4.064" y2="1.9558" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.9558" x2="4.445" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.445" y1="1.5748" x2="-4.064" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.064" y1="1.9558" x2="4.445" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.445" y1="-1.5748" x2="-4.064" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.064" y1="-1.9558" x2="4.064" y2="-1.9558" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.5748" x2="4.445" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.5748" x2="-4.445" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="0.508" x2="-4.445" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-0.508" x2="-4.445" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="0.508" x2="-4.445" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-4.445" y1="-1.6002" x2="4.445" y2="-1.6002" width="0.1524" layer="21"/>
<smd name="1" x="-3.81" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="-3.81" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-2.54" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-1.27" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="-2.54" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="-1.27" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="0" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="0" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="1.27" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="2.54" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="1.27" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="2.54" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="3.81" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="3.81" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="-3.556" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.699" y="-1.778" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-0.254" y1="1.9558" x2="0.254" y2="3.0988" layer="51"/>
<rectangle x1="-4.064" y1="-3.0988" x2="-3.556" y2="-1.9558" layer="51"/>
<rectangle x1="-2.794" y1="-3.0988" x2="-2.286" y2="-1.9558" layer="51"/>
<rectangle x1="-1.524" y1="-3.0734" x2="-1.016" y2="-1.9304" layer="51"/>
<rectangle x1="-0.254" y1="-3.0988" x2="0.254" y2="-1.9558" layer="51"/>
<rectangle x1="-1.524" y1="1.9558" x2="-1.016" y2="3.0988" layer="51"/>
<rectangle x1="-2.794" y1="1.9558" x2="-2.286" y2="3.0988" layer="51"/>
<rectangle x1="-4.064" y1="1.9558" x2="-3.556" y2="3.0988" layer="51"/>
<rectangle x1="1.016" y1="1.9558" x2="1.524" y2="3.0988" layer="51"/>
<rectangle x1="2.286" y1="1.9558" x2="2.794" y2="3.0988" layer="51"/>
<rectangle x1="3.556" y1="1.9558" x2="4.064" y2="3.0988" layer="51"/>
<rectangle x1="1.016" y1="-3.0988" x2="1.524" y2="-1.9558" layer="51"/>
<rectangle x1="2.286" y1="-3.0988" x2="2.794" y2="-1.9558" layer="51"/>
<rectangle x1="3.556" y1="-3.0988" x2="4.064" y2="-1.9558" layer="51"/>
</package>
<package name="SOT23-BEC">
<description>TO-236 ITT Intermetall</description>
<wire x1="1.4224" y1="0.6604" x2="1.4224" y2="-0.6604" width="0.127" layer="51"/>
<wire x1="1.4224" y1="-0.6604" x2="-1.4224" y2="-0.6604" width="0.127" layer="51"/>
<wire x1="-1.4224" y1="-0.6604" x2="-1.4224" y2="0.6604" width="0.127" layer="51"/>
<wire x1="-1.4224" y1="0.6604" x2="1.4224" y2="0.6604" width="0.127" layer="51"/>
<smd name="C" x="0" y="1.1" dx="1" dy="1.4" layer="1"/>
<smd name="E" x="0.95" y="-1.1" dx="1" dy="1.4" layer="1"/>
<smd name="B" x="-0.95" y="-1.1" dx="1" dy="1.4" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2286" y1="0.7112" x2="0.2286" y2="1.2954" layer="51"/>
<rectangle x1="0.7112" y1="-1.2954" x2="1.1684" y2="-0.7112" layer="51"/>
<rectangle x1="-1.1684" y1="-1.2954" x2="-0.7112" y2="-0.7112" layer="51"/>
</package>
<package name="SOT23-EBC">
<description>&lt;b&gt;SOT-23 (EBC)&lt;/b&gt;</description>
<wire x1="1.4224" y1="0.6604" x2="1.4224" y2="-0.6604" width="0.127" layer="51"/>
<wire x1="1.4224" y1="-0.6604" x2="-1.4224" y2="-0.6604" width="0.127" layer="51"/>
<wire x1="-1.4224" y1="-0.6604" x2="-1.4224" y2="0.6604" width="0.127" layer="51"/>
<wire x1="-1.4224" y1="0.6604" x2="1.4224" y2="0.6604" width="0.127" layer="51"/>
<smd name="C" x="0" y="1.1" dx="1" dy="1.4" layer="1"/>
<smd name="B" x="0.95" y="-1.1" dx="1" dy="1.4" layer="1"/>
<smd name="E" x="-0.95" y="-1.1" dx="1" dy="1.4" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2286" y1="0.7112" x2="0.2286" y2="1.2954" layer="51"/>
<rectangle x1="0.7112" y1="-1.2954" x2="1.1684" y2="-0.7112" layer="51"/>
<rectangle x1="-1.1684" y1="-1.2954" x2="-0.7112" y2="-0.7112" layer="51"/>
</package>
<package name="SOT23-BCE">
<description>&lt;b&gt;SOT-23 (BCE)&lt;/b&gt;</description>
<wire x1="1.4224" y1="0.6604" x2="1.4224" y2="-0.6604" width="0.127" layer="51"/>
<wire x1="1.4224" y1="-0.6604" x2="-1.4224" y2="-0.6604" width="0.127" layer="51"/>
<wire x1="-1.4224" y1="-0.6604" x2="-1.4224" y2="0.6604" width="0.127" layer="51"/>
<wire x1="-1.4224" y1="0.6604" x2="1.4224" y2="0.6604" width="0.127" layer="51"/>
<smd name="E" x="0" y="1.1" dx="1" dy="1.4" layer="1"/>
<smd name="C" x="0.95" y="-1.1" dx="1" dy="1.4" layer="1"/>
<smd name="B" x="-0.95" y="-1.1" dx="1" dy="1.4" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2286" y1="0.7112" x2="0.2286" y2="1.2954" layer="51"/>
<rectangle x1="0.7112" y1="-1.2954" x2="1.1684" y2="-0.7112" layer="51"/>
<rectangle x1="-1.1684" y1="-1.2954" x2="-0.7112" y2="-0.7112" layer="51"/>
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
<package name="RTRIM3304W">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
0,1W 25%</description>
<wire x1="-1.9" y1="1.9" x2="1.9" y2="1.9" width="0.254" layer="51"/>
<wire x1="1.9" y1="1.9" x2="1.9" y2="-1.1" width="0.254" layer="21"/>
<wire x1="1.9" y1="-1.1" x2="1.9" y2="-1.9" width="0.254" layer="51"/>
<wire x1="1.9" y1="-1.9" x2="0.65" y2="-1.9" width="0.254" layer="51"/>
<wire x1="0.65" y1="-1.9" x2="0.65" y2="-1.1" width="0.254" layer="51"/>
<wire x1="0.65" y1="-1.1" x2="-0.65" y2="-1.1" width="0.254" layer="21"/>
<wire x1="-0.65" y1="-1.1" x2="-0.65" y2="-1.9" width="0.254" layer="51"/>
<wire x1="-0.65" y1="-1.9" x2="-1.9" y2="-1.9" width="0.254" layer="51"/>
<wire x1="-1.9" y1="-1.9" x2="-1.9" y2="-1.1" width="0.254" layer="51"/>
<wire x1="-1.9" y1="-1.1" x2="-1.9" y2="1.9" width="0.254" layer="21"/>
<circle x="0" y="0.4" radius="1.2" width="0.1016" layer="51"/>
<smd name="1" x="-1.25" y="-1.9" dx="1.4" dy="1.4" layer="1"/>
<smd name="3" x="1.25" y="-1.9" dx="1.4" dy="1.4" layer="1"/>
<smd name="2" x="0" y="1.6" dx="2.5" dy="1.4" layer="1"/>
<text x="-2.29" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.545" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1" y1="0.2" x2="1" y2="0.6" layer="51"/>
<rectangle x1="-0.2" y1="-0.6" x2="0.2" y2="1.4" layer="51"/>
</package>
<package name="RTRIM3165W">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; MEGGIT</description>
<wire x1="-1.125" y1="1.75" x2="-1.875" y2="1" width="0.254" layer="21"/>
<wire x1="-1.875" y1="1" x2="-1.875" y2="-1.375" width="0.254" layer="21"/>
<wire x1="-1.875" y1="-1.375" x2="-1.875" y2="-2.25" width="0.254" layer="51"/>
<wire x1="-1.875" y1="-2.25" x2="-1.625" y2="-2.5" width="0.254" layer="51"/>
<wire x1="-1.625" y1="-2.5" x2="-1.125" y2="-2.5" width="0.254" layer="51"/>
<wire x1="-1.125" y1="-2.5" x2="-1.125" y2="-1.625" width="0.254" layer="51"/>
<wire x1="-1.125" y1="-1.625" x2="-0.25" y2="-1.625" width="0.254" layer="51"/>
<wire x1="-0.25" y1="-1.625" x2="-0.25" y2="-2.5" width="0.254" layer="51"/>
<wire x1="-0.25" y1="-2.5" x2="0.25" y2="-2.5" width="0.254" layer="51"/>
<wire x1="0.25" y1="-2.5" x2="0.25" y2="-1.625" width="0.254" layer="51"/>
<wire x1="0.25" y1="-1.625" x2="1.125" y2="-1.625" width="0.254" layer="51"/>
<wire x1="1.125" y1="-1.625" x2="1.125" y2="-2.5" width="0.254" layer="51"/>
<wire x1="1.125" y1="-2.5" x2="1.625" y2="-2.5" width="0.254" layer="51"/>
<wire x1="1.625" y1="-2.5" x2="1.875" y2="-2.25" width="0.254" layer="51"/>
<wire x1="1.875" y1="-2.25" x2="1.875" y2="-1.625" width="0.254" layer="51"/>
<wire x1="1.875" y1="-1.625" x2="1.875" y2="1" width="0.254" layer="21"/>
<wire x1="1.875" y1="1" x2="1.125" y2="1.75" width="0.254" layer="21"/>
<wire x1="1.125" y1="1.75" x2="-1.125" y2="1.75" width="0.254" layer="51"/>
<circle x="0" y="0" radius="1.3806" width="0.1016" layer="21"/>
<smd name="1" x="-1.35" y="-2" dx="0.8" dy="1.6" layer="1"/>
<smd name="2" x="0" y="-2" dx="0.8" dy="1.6" layer="1"/>
<smd name="3" x="1.35" y="-2" dx="0.8" dy="1.6" layer="1"/>
<smd name="4" x="0" y="1.8" dx="2" dy="1" layer="1"/>
<text x="-2.54" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.25" y1="-1.125" x2="0.25" y2="1.125" layer="21"/>
<rectangle x1="-1.125" y1="-0.25" x2="1.125" y2="0.25" layer="21"/>
<hole x="0" y="0" drill="2"/>
</package>
<package name="RTRIM3202">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; MEGGIT</description>
<wire x1="-1.6" y1="1.4" x2="-1.6" y2="-1.4" width="0.254" layer="21"/>
<wire x1="-1.6" y1="-1.4" x2="1.6" y2="-1.4" width="0.254" layer="51"/>
<wire x1="1.6" y1="-1.4" x2="1.6" y2="1.4" width="0.254" layer="21"/>
<wire x1="1.6" y1="1.4" x2="-1.6" y2="1.4" width="0.254" layer="51"/>
<wire x1="-1.6" y1="1.4" x2="-1" y2="1.4" width="0.254" layer="21"/>
<wire x1="1" y1="1.4" x2="1.6" y2="1.4" width="0.254" layer="21"/>
<wire x1="-0.3" y1="-1.4" x2="0.3" y2="-1.4" width="0.254" layer="21"/>
<circle x="0" y="0" radius="1" width="0.1016" layer="51"/>
<smd name="2" x="0" y="1.6" dx="1.6" dy="1.4" layer="1"/>
<smd name="1" x="-0.95" y="-1.75" dx="0.9" dy="1.3" layer="1"/>
<smd name="3" x="0.95" y="-1.75" dx="0.9" dy="1.3" layer="1"/>
<text x="-1.99" y="-2.39" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.26" y="-2.39" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.2" y1="-1" x2="0.2" y2="1" layer="51"/>
</package>
<package name="RTRIM3314J">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
0,25W, 20%&lt;br&gt;
Source: &lt;a href="http://www.bourns.com/pdfs/3314.pdf"&gt; Data sheet&lt;/a&gt;</description>
<wire x1="2.15" y1="2.15" x2="2.15" y2="-2.15" width="0.254" layer="51"/>
<wire x1="2.15" y1="-2.15" x2="-2.15" y2="-2.15" width="0.254" layer="51"/>
<wire x1="-2.15" y1="-2.15" x2="-2.15" y2="2.15" width="0.254" layer="51"/>
<wire x1="-2.15" y1="2.15" x2="2.15" y2="2.15" width="0.254" layer="51"/>
<wire x1="2.15" y1="-0.8" x2="2.15" y2="2.15" width="0.254" layer="21"/>
<wire x1="2.15" y1="2.15" x2="1.2" y2="2.15" width="0.254" layer="21"/>
<wire x1="-1.2" y1="2.15" x2="-2.15" y2="2.15" width="0.254" layer="21"/>
<wire x1="-2.15" y1="2.15" x2="-2.15" y2="-0.8" width="0.254" layer="21"/>
<wire x1="0.95" y1="-2.15" x2="-0.95" y2="-2.15" width="0.254" layer="21"/>
<wire x1="-0.5" y1="-0.9" x2="0.9" y2="0.5" width="0.1016" layer="21"/>
<wire x1="-0.85" y1="-0.55" x2="0.55" y2="0.85" width="0.1016" layer="21"/>
<circle x="0" y="0" radius="1.1" width="0.1016" layer="21"/>
<smd name="3" x="-1.8" y="-2" dx="1.3" dy="2" layer="1" rot="R180"/>
<smd name="1" x="1.8" y="-2" dx="1.3" dy="2" layer="1" rot="R180"/>
<smd name="2" x="0" y="2" dx="2" dy="2" layer="1"/>
<text x="-2.64" y="-2.99" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.01" y="-2.99" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIM4G/J">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; VISHAY</description>
<wire x1="-2.4" y1="2.4" x2="-2.4" y2="-2.4" width="0.254" layer="51"/>
<wire x1="-2.4" y1="-2.4" x2="2.4" y2="-2.4" width="0.254" layer="51"/>
<wire x1="2.4" y1="-2.4" x2="2.4" y2="2.4" width="0.254" layer="51"/>
<wire x1="2.4" y1="2.4" x2="-2.4" y2="2.4" width="0.254" layer="51"/>
<wire x1="-2.1" y1="-2.4" x2="-2.4" y2="-2.4" width="0.254" layer="21"/>
<wire x1="-2.4" y1="-2.4" x2="-2.4" y2="2.4" width="0.254" layer="21"/>
<wire x1="-2.4" y1="2.4" x2="-1.25" y2="2.4" width="0.254" layer="21"/>
<wire x1="2" y1="-2.4" x2="2.4" y2="-2.4" width="0.254" layer="21"/>
<wire x1="2.4" y1="-2.4" x2="2.4" y2="2.4" width="0.254" layer="21"/>
<wire x1="2.4" y1="2.4" x2="1.25" y2="2.4" width="0.254" layer="21"/>
<wire x1="-0.25" y1="-2.4" x2="0.25" y2="-2.4" width="0.254" layer="21"/>
<circle x="0" y="0" radius="1.85" width="0.1016" layer="21"/>
<smd name="1" x="-1.15" y="-2.75" dx="1.3" dy="1.3" layer="1"/>
<smd name="3" x="1.15" y="-2.75" dx="1.3" dy="1.3" layer="1"/>
<smd name="2" x="0" y="2.75" dx="2" dy="1.3" layer="1"/>
<text x="-2.875" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.045" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.3" y1="-0.2" x2="1.35" y2="0.2" layer="21"/>
<rectangle x1="-0.2" y1="-1.35" x2="0.2" y2="1.3" layer="21"/>
</package>
<package name="RTRIMCVR42A">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; AVX</description>
<wire x1="-1.9" y1="1.9" x2="-1.9" y2="-1.9" width="0.254" layer="51"/>
<wire x1="-1.9" y1="-1.9" x2="1.9" y2="-1.9" width="0.254" layer="51"/>
<wire x1="1.9" y1="-1.9" x2="1.9" y2="1.9" width="0.254" layer="51"/>
<wire x1="1.9" y1="1.9" x2="-1.9" y2="1.9" width="0.254" layer="51"/>
<wire x1="-0.6" y1="-1.1" x2="0.6" y2="-1.1" width="0.8128" layer="51" curve="-302.779081" cap="flat"/>
<wire x1="-1.9" y1="-1.15" x2="-1.9" y2="1.9" width="0.254" layer="21"/>
<wire x1="-1.9" y1="1.9" x2="-1.35" y2="1.9" width="0.254" layer="21"/>
<wire x1="1.9" y1="-1.15" x2="1.9" y2="1.9" width="0.254" layer="21"/>
<wire x1="1.9" y1="1.9" x2="1.35" y2="1.9" width="0.254" layer="21"/>
<smd name="2" x="0" y="1.8" dx="2.3" dy="1.5" layer="1"/>
<smd name="1" x="-1.15" y="-2.05" dx="1.3" dy="1.4" layer="1"/>
<smd name="3" x="1.15" y="-2.05" dx="1.3" dy="1.4" layer="1"/>
<text x="-2.29" y="-2.69" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.51" y="-2.69" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.65" y1="-1.15" x2="0.65" y2="-0.75" layer="51"/>
<rectangle x1="-1.05" y1="-0.15" x2="1.05" y2="0.15" layer="21"/>
</package>
<package name="RTRIM3214W">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
SMD Cermet trimmer</description>
<wire x1="-2.3" y1="-1.85" x2="-2.3" y2="1.85" width="0.254" layer="51"/>
<wire x1="-2.3" y1="1.85" x2="2.3" y2="1.85" width="0.254" layer="51"/>
<wire x1="2.3" y1="1.85" x2="2.3" y2="-1.85" width="0.254" layer="51"/>
<wire x1="2.3" y1="-1.85" x2="-2.3" y2="-1.85" width="0.254" layer="51"/>
<wire x1="-2.3" y1="-1.85" x2="-2.3" y2="1.85" width="0.254" layer="21"/>
<wire x1="-2.3" y1="1.85" x2="-1.3" y2="1.85" width="0.254" layer="21"/>
<wire x1="2.3" y1="-1.85" x2="2.3" y2="1.85" width="0.254" layer="21"/>
<wire x1="2.3" y1="1.85" x2="1.3" y2="1.85" width="0.254" layer="21"/>
<wire x1="-0.4" y1="-1.85" x2="0.4" y2="-1.85" width="0.254" layer="21"/>
<circle x="1.2" y="0.65" radius="0.7" width="0.1016" layer="51"/>
<smd name="1" x="-1.275" y="-1.45" dx="1.3" dy="1.6" layer="1"/>
<smd name="3" x="1.275" y="-1.45" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0" y="1.45" dx="2" dy="1.6" layer="1"/>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="0.55" y1="0.55" x2="1.85" y2="0.75" layer="51"/>
<rectangle x1="-1.8" y1="-2.1" x2="-0.75" y2="-1.95" layer="51"/>
<rectangle x1="0.75" y1="-2.1" x2="1.8" y2="-1.95" layer="51"/>
<rectangle x1="-0.75" y1="1.95" x2="0.75" y2="2.1" layer="51"/>
</package>
<package name="RTRIM3224G">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
Side Adjust</description>
<wire x1="2.25" y1="2.15" x2="2.25" y2="-2.15" width="0.254" layer="51"/>
<wire x1="2.25" y1="-2.15" x2="-2.25" y2="-2.15" width="0.254" layer="51"/>
<wire x1="-2.25" y1="-2.15" x2="-2.25" y2="2.15" width="0.254" layer="51"/>
<wire x1="-2.25" y1="2.15" x2="2.25" y2="2.15" width="0.254" layer="51"/>
<wire x1="-0.5" y1="2.05" x2="-0.5" y2="1.35" width="0.1016" layer="51"/>
<wire x1="-0.5" y1="1.35" x2="-1.9" y2="1.35" width="0.1016" layer="51"/>
<wire x1="-1.9" y1="1.35" x2="-1.9" y2="2.05" width="0.1016" layer="51"/>
<wire x1="-1.2" y1="2.15" x2="-2.25" y2="2.15" width="0.254" layer="21"/>
<wire x1="-2.25" y1="2.15" x2="-2.25" y2="-2.15" width="0.254" layer="21"/>
<wire x1="-2.25" y1="-2.15" x2="-2" y2="-2.15" width="0.254" layer="21"/>
<wire x1="-0.3" y1="-2.15" x2="0.3" y2="-2.15" width="0.254" layer="21"/>
<wire x1="1.2" y1="2.15" x2="2.25" y2="2.15" width="0.254" layer="21"/>
<wire x1="2.25" y1="2.15" x2="2.25" y2="-2.15" width="0.254" layer="21"/>
<wire x1="2.25" y1="-2.15" x2="2" y2="-2.15" width="0.254" layer="21"/>
<circle x="-1.2" y="1.7" radius="0.2" width="0" layer="21"/>
<smd name="1" x="-1.15" y="-2.6" dx="1.27" dy="1.27" layer="1"/>
<smd name="3" x="1.15" y="-2.6" dx="1.27" dy="1.27" layer="1"/>
<smd name="2" x="0" y="2.6" dx="2" dy="1.27" layer="1"/>
<text x="-2.49" y="-3.205" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-3.205" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.65" y1="2.25" x2="0.65" y2="3" layer="51"/>
<rectangle x1="-1.6" y1="-3" x2="-0.7" y2="-2.25" layer="51"/>
<rectangle x1="0.7" y1="-3" x2="1.6" y2="-2.25" layer="51"/>
</package>
<package name="RTRIM3224J">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
Side Adjust</description>
<wire x1="2.4" y1="2.3" x2="2.4" y2="-2.3" width="0.254" layer="51"/>
<wire x1="2.4" y1="-2.3" x2="-2.4" y2="-2.3" width="0.254" layer="51"/>
<wire x1="-2.4" y1="-2.3" x2="-2.4" y2="2.3" width="0.254" layer="51"/>
<wire x1="-2.4" y1="2.3" x2="2.4" y2="2.3" width="0.254" layer="51"/>
<wire x1="-0.5" y1="2.2" x2="-0.5" y2="1.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.5" y1="1.6" x2="-1.9" y2="1.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-1.9" y1="1.6" x2="-1.9" y2="2.2" width="0.1016" layer="51" style="shortdash"/>
<wire x1="1.4" y1="2.3" x2="2.4" y2="2.3" width="0.254" layer="21" style="shortdash"/>
<wire x1="2.4" y1="2.3" x2="2.4" y2="-2.3" width="0.254" layer="21"/>
<wire x1="2.4" y1="-2.3" x2="2.2" y2="-2.3" width="0.254" layer="21"/>
<wire x1="-2.1" y1="-2.3" x2="-2.4" y2="-2.3" width="0.254" layer="21"/>
<wire x1="-2.4" y1="-2.3" x2="-2.4" y2="2.3" width="0.254" layer="21"/>
<wire x1="-2.4" y1="2.3" x2="-1.4" y2="2.3" width="0.254" layer="21"/>
<wire x1="0.2" y1="-2.3" x2="-0.2" y2="-2.3" width="0.254" layer="21"/>
<circle x="-1.2" y="1.9" radius="0.1414" width="0" layer="21"/>
<smd name="3" x="1.15" y="-2" dx="1.3" dy="2" layer="1"/>
<smd name="1" x="-1.15" y="-2" dx="1.3" dy="2" layer="1"/>
<smd name="2" x="0" y="2" dx="2" dy="2" layer="1"/>
<text x="2.74" y="2.405" size="1.27" layer="25" rot="R270">&gt;NAME</text>
<text x="-4.01" y="2.405" size="1.27" layer="27" rot="R270">&gt;VALUE</text>
<rectangle x1="-0.6" y1="2.4" x2="0.6" y2="2.5" layer="51"/>
<rectangle x1="0.7" y1="-2.5" x2="1.6" y2="-2.4" layer="51"/>
<rectangle x1="-1.6" y1="-2.5" x2="-0.7" y2="-2.4" layer="51"/>
</package>
<package name="RTRIM3224X">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
Top Adjust</description>
<wire x1="-2.25" y1="-1.6" x2="-2.25" y2="1.6" width="0.254" layer="51"/>
<wire x1="-2.25" y1="1.6" x2="2.25" y2="1.6" width="0.254" layer="51"/>
<wire x1="2.25" y1="1.6" x2="2.25" y2="-1.6" width="0.254" layer="51"/>
<wire x1="2.25" y1="-1.6" x2="-2.25" y2="-1.6" width="0.254" layer="51"/>
<wire x1="-2.25" y1="-1.6" x2="-2.25" y2="1.6" width="0.254" layer="21"/>
<wire x1="-2.25" y1="1.6" x2="-1.25" y2="1.6" width="0.254" layer="21"/>
<wire x1="1.25" y1="1.6" x2="2.25" y2="1.6" width="0.254" layer="21"/>
<wire x1="2.25" y1="1.6" x2="2.25" y2="-1.6" width="0.254" layer="21"/>
<wire x1="-0.4" y1="-1.6" x2="0.4" y2="-1.6" width="0.254" layer="21"/>
<circle x="1.2" y="0.6" radius="0.5" width="0.1016" layer="21"/>
<smd name="1" x="-1.27" y="-2.54" dx="1.32" dy="1.9" layer="1"/>
<smd name="3" x="1.27" y="-2.54" dx="1.32" dy="1.9" layer="1"/>
<smd name="2" x="0" y="2.54" dx="2" dy="2" layer="1"/>
<text x="-2.64" y="-3.455" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.01" y="-3.455" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.7" y1="-2.85" x2="-0.9" y2="-1.7" layer="51"/>
<rectangle x1="0.9" y1="-2.85" x2="1.7" y2="-1.7" layer="51"/>
<rectangle x1="-0.65" y1="1.7" x2="0.65" y2="2.85" layer="51"/>
<rectangle x1="0.75" y1="0.5" x2="1.65" y2="0.7" layer="21"/>
</package>
<package name="RTRIM3103">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; MEGGIT</description>
<wire x1="-1.45" y1="1.75" x2="-1.45" y2="-1.65" width="0.254" layer="51"/>
<wire x1="-1.45" y1="-1.65" x2="1.45" y2="-1.65" width="0.254" layer="51"/>
<wire x1="1.45" y1="-1.65" x2="1.45" y2="1.75" width="0.254" layer="51"/>
<wire x1="1.45" y1="1.75" x2="-1.45" y2="1.75" width="0.254" layer="51"/>
<wire x1="-1.45" y1="-0.4" x2="-1.45" y2="1.75" width="0.254" layer="21"/>
<wire x1="-1.45" y1="1.75" x2="-0.85" y2="1.75" width="0.254" layer="21"/>
<wire x1="1.45" y1="-0.4" x2="1.45" y2="1.75" width="0.254" layer="21"/>
<wire x1="1.45" y1="1.75" x2="0.85" y2="1.75" width="0.254" layer="21"/>
<circle x="0" y="0" radius="1.15" width="0.1016" layer="51"/>
<smd name="2" x="0" y="1.3" dx="1.3" dy="1.3" layer="1"/>
<smd name="1" x="-1" y="-1.225" dx="1.2" dy="1.25" layer="1"/>
<smd name="3" x="1" y="-1.225" dx="1.2" dy="1.25" layer="1"/>
<text x="-1.905" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.175" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.15" y1="-0.15" x2="1.15" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="-1.15" x2="0.15" y2="1.15" layer="51"/>
</package>
<package name="RTRIM5W">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;
abgedichtet nach &lt;b&gt;IP67&lt;/b&gt;</description>
<wire x1="2.25" y1="1.6" x2="-2.25" y2="1.6" width="0.254" layer="51"/>
<wire x1="-2.25" y1="1.6" x2="-2.25" y2="-1.6" width="0.254" layer="51"/>
<wire x1="-2.25" y1="-1.6" x2="2.25" y2="-1.6" width="0.254" layer="51"/>
<wire x1="2.25" y1="-1.6" x2="2.25" y2="1.6" width="0.254" layer="51"/>
<wire x1="1.25" y1="1.6" x2="2.25" y2="1.6" width="0.254" layer="21"/>
<wire x1="2.25" y1="1.6" x2="2.25" y2="-1.6" width="0.254" layer="21"/>
<wire x1="-1.25" y1="1.6" x2="-2.25" y2="1.6" width="0.254" layer="21"/>
<wire x1="-2.25" y1="1.6" x2="-2.25" y2="-1.6" width="0.254" layer="21"/>
<wire x1="-0.3" y1="-1.6" x2="0.3" y2="-1.6" width="0.254" layer="21"/>
<circle x="1.55" y="0.95" radius="0.4" width="0.1016" layer="21"/>
<smd name="1" x="-1.25" y="-1.45" dx="1.3" dy="1.6" layer="1"/>
<smd name="3" x="1.25" y="-1.45" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0" y="1.45" dx="2" dy="1.6" layer="1"/>
<text x="-2.625" y="-2.19" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.845" y="-2.19" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="1.15" y1="0.85" x2="1.95" y2="1.05" layer="21"/>
</package>
<package name="RTRIM5X">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;
abgedichtet nach &lt;b&gt;IP67&lt;/b&gt;</description>
<wire x1="2.35" y1="2.35" x2="-2.35" y2="2.35" width="0.254" layer="51"/>
<wire x1="-2.35" y1="2.35" x2="-2.35" y2="-2.35" width="0.254" layer="51"/>
<wire x1="-2.35" y1="-2.35" x2="2.35" y2="-2.35" width="0.254" layer="51"/>
<wire x1="2.35" y1="-2.35" x2="2.35" y2="2.35" width="0.254" layer="51"/>
<wire x1="1.25" y1="2.35" x2="2.35" y2="2.35" width="0.254" layer="21"/>
<wire x1="2.35" y1="2.35" x2="2.35" y2="-2.35" width="0.254" layer="21"/>
<wire x1="2.35" y1="-2.35" x2="2.05" y2="-2.35" width="0.254" layer="21"/>
<wire x1="-2.05" y1="-2.35" x2="-2.35" y2="-2.35" width="0.254" layer="21"/>
<wire x1="-2.35" y1="-2.35" x2="-2.35" y2="2.35" width="0.254" layer="21"/>
<wire x1="-2.35" y1="2.35" x2="-1.25" y2="2.35" width="0.254" layer="21"/>
<wire x1="0.25" y1="-2.35" x2="-0.25" y2="-2.35" width="0.254" layer="21"/>
<wire x1="-1.1" y1="2.25" x2="-1.1" y2="1.6" width="0.1016" layer="21"/>
<wire x1="-1.1" y1="1.6" x2="-2.05" y2="1.6" width="0.1016" layer="21"/>
<wire x1="-2.05" y1="1.6" x2="-2.05" y2="2.25" width="0.1016" layer="21"/>
<smd name="1" x="-1.15" y="-2" dx="1.3" dy="2" layer="1"/>
<smd name="3" x="1.15" y="-2" dx="1.3" dy="2" layer="1"/>
<smd name="2" x="0" y="2" dx="2" dy="2" layer="1"/>
<text x="-3.175" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.445" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIMTSM53YJ">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; VISHAY&lt;p&gt;
abgedichtet nach &lt;b&gt;IP67&lt;/b&gt;</description>
<wire x1="-2.25" y1="1.6" x2="-2.25" y2="-1.6" width="0.254" layer="51"/>
<wire x1="-2.25" y1="-1.6" x2="2.25" y2="-1.6" width="0.254" layer="51"/>
<wire x1="2.25" y1="-1.6" x2="2.25" y2="1.6" width="0.254" layer="51"/>
<wire x1="2.25" y1="1.6" x2="-2.25" y2="1.6" width="0.254" layer="51"/>
<wire x1="-2.25" y1="-1.6" x2="-2.25" y2="1.6" width="0.254" layer="21"/>
<wire x1="-2.25" y1="1.6" x2="-1.15" y2="1.6" width="0.254" layer="21"/>
<wire x1="2.25" y1="-1.6" x2="2.25" y2="1.6" width="0.254" layer="21"/>
<wire x1="2.25" y1="1.6" x2="1.15" y2="1.6" width="0.254" layer="21"/>
<wire x1="-0.4" y1="-1.6" x2="0.4" y2="-1.6" width="0.254" layer="21"/>
<circle x="1.3" y="0.65" radius="0.7" width="0.1016" layer="51"/>
<smd name="1" x="-1.25" y="-1.45" dx="1.3" dy="1.6" layer="1"/>
<smd name="3" x="1.25" y="-1.45" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0" y="1.45" dx="1.8" dy="1.6" layer="1"/>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.3" y1="1.7" x2="0.3" y2="1.9" layer="51"/>
<rectangle x1="-1.6" y1="-1.9" x2="-1" y2="-1.7" layer="51"/>
<rectangle x1="0.95" y1="-1.9" x2="1.55" y2="-1.7" layer="51"/>
<rectangle x1="1.2" y1="0" x2="1.4" y2="1.3" layer="21"/>
</package>
<package name="RTRIMTSM53YL">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; VISHAY&lt;p&gt;
abgedichtet nach &lt;b&gt;IP67&lt;/b&gt;</description>
<wire x1="-2.25" y1="1.6" x2="-2.25" y2="-1.6" width="0.254" layer="51"/>
<wire x1="-2.25" y1="-1.6" x2="2.25" y2="-1.6" width="0.254" layer="51"/>
<wire x1="2.25" y1="-1.6" x2="2.25" y2="1.6" width="0.254" layer="51"/>
<wire x1="2.25" y1="1.6" x2="-2.25" y2="1.6" width="0.254" layer="51"/>
<wire x1="-2.25" y1="-1.6" x2="-2.25" y2="1.6" width="0.254" layer="21"/>
<wire x1="-2.25" y1="1.6" x2="-1.15" y2="1.6" width="0.254" layer="21"/>
<wire x1="2.25" y1="-1.6" x2="2.25" y2="1.6" width="0.254" layer="21"/>
<wire x1="2.25" y1="1.6" x2="1.15" y2="1.6" width="0.254" layer="21"/>
<wire x1="-0.35" y1="-1.6" x2="0.35" y2="-1.6" width="0.254" layer="21"/>
<circle x="1.3" y="0.65" radius="0.7" width="0.1016" layer="51"/>
<smd name="1" x="-1.25" y="-1.9" dx="1.3" dy="2" layer="1"/>
<smd name="3" x="1.25" y="-1.9" dx="1.3" dy="2" layer="1"/>
<smd name="2" x="0" y="1.9" dx="1.8" dy="2" layer="1"/>
<text x="-2.59" y="-2.555" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.86" y="-2.555" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="1.2" y1="0" x2="1.4" y2="1.3" layer="21"/>
<rectangle x1="-0.3" y1="1.7" x2="0.3" y2="2.55" layer="51"/>
<rectangle x1="-1.55" y1="-2.55" x2="-0.95" y2="-1.7" layer="51"/>
<rectangle x1="0.95" y1="-2.55" x2="1.55" y2="-1.7" layer="51"/>
</package>
<package name="RTRIMTS63X">
<description>&lt;b&gt;Trimm resistror&lt;/b&gt; VISHAY&lt;p&gt;
seales container, solder immerson IP67</description>
<wire x1="3.3" y1="2.4" x2="-3.3" y2="2.4" width="0.254" layer="51"/>
<wire x1="-3.3" y1="2.4" x2="-3.3" y2="-2.4" width="0.254" layer="51"/>
<wire x1="-3.3" y1="-2.4" x2="3.3" y2="-2.4" width="0.254" layer="51"/>
<wire x1="3.3" y1="-2.4" x2="3.3" y2="2.4" width="0.254" layer="51"/>
<wire x1="0.8" y1="2.4" x2="3.3" y2="2.4" width="0.254" layer="21"/>
<wire x1="3.3" y1="2.4" x2="3.3" y2="-2.4" width="0.254" layer="21"/>
<wire x1="-0.8" y1="2.4" x2="-3.3" y2="2.4" width="0.254" layer="21"/>
<wire x1="-3.3" y1="2.4" x2="-3.3" y2="-2.4" width="0.254" layer="21"/>
<wire x1="-1.75" y1="-2.4" x2="1.75" y2="-2.4" width="0.254" layer="21"/>
<wire x1="4.3" y1="2.25" x2="3.4" y2="2.25" width="0.1016" layer="21"/>
<wire x1="4.3" y1="0.85" x2="4.3" y2="1.35" width="0.1016" layer="21"/>
<wire x1="4.3" y1="1.35" x2="4" y2="1.35" width="0.1016" layer="21"/>
<wire x1="4" y1="1.35" x2="4" y2="1.75" width="0.1016" layer="21"/>
<wire x1="4" y1="1.75" x2="4.3" y2="1.75" width="0.1016" layer="21"/>
<wire x1="4.3" y1="1.75" x2="4.3" y2="2.25" width="0.1016" layer="21"/>
<wire x1="4.3" y1="0.85" x2="3.4" y2="0.85" width="0.1016" layer="21"/>
<smd name="1" x="-2.55" y="-2.25" dx="1" dy="3" layer="1"/>
<smd name="2" x="0" y="2.25" dx="1" dy="3" layer="1"/>
<smd name="3" x="2.55" y="-2.25" dx="1" dy="3" layer="1"/>
<text x="-3.69" y="-3.34" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="6.06" y="-3.34" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.25" y1="2.5" x2="0.25" y2="3.35" layer="51"/>
<rectangle x1="2.3" y1="-3.35" x2="2.8" y2="-2.5" layer="51"/>
<rectangle x1="-2.8" y1="-3.35" x2="-2.3" y2="-2.5" layer="51"/>
</package>
<package name="RTRIMTS63Y">
<description>&lt;b&gt;Trimm resistror&lt;/b&gt; VISHAY&lt;p&gt;
seales container, solder immerson IP67</description>
<wire x1="3.3" y1="2.35" x2="-3.3" y2="2.35" width="0.254" layer="51"/>
<wire x1="-3.3" y1="2.35" x2="-3.3" y2="-2.35" width="0.254" layer="51"/>
<wire x1="-3.3" y1="-2.35" x2="3.3" y2="-2.35" width="0.254" layer="51"/>
<wire x1="3.3" y1="-2.35" x2="3.3" y2="2.35" width="0.254" layer="51"/>
<wire x1="0.75" y1="2.35" x2="3.3" y2="2.35" width="0.254" layer="21"/>
<wire x1="3.3" y1="2.35" x2="3.3" y2="-2.35" width="0.254" layer="21"/>
<wire x1="1.75" y1="-2.35" x2="-1.75" y2="-2.35" width="0.254" layer="21"/>
<wire x1="-3.3" y1="-2.35" x2="-3.3" y2="2.35" width="0.254" layer="21"/>
<wire x1="-3.3" y1="2.35" x2="-0.75" y2="2.35" width="0.254" layer="21"/>
<circle x="-2.15" y="1.5" radius="0.6" width="0.1016" layer="21"/>
<smd name="1" x="-2.55" y="-2.25" dx="1" dy="3" layer="1"/>
<smd name="2" x="0" y="2.25" dx="1" dy="3" layer="1"/>
<smd name="3" x="2.55" y="-2.25" dx="1" dy="3" layer="1"/>
<text x="-3.74" y="-3.69" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="5.21" y="-3.69" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.7" y1="1.4" x2="-1.6" y2="1.6" layer="21"/>
<rectangle x1="-0.3" y1="2.45" x2="0.3" y2="3" layer="51"/>
<rectangle x1="-2.85" y1="-3" x2="-2.25" y2="-2.45" layer="51"/>
<rectangle x1="2.25" y1="-3" x2="2.85" y2="-2.45" layer="51"/>
</package>
<package name="RTRIMTS63Z">
<description>&lt;b&gt;Trimm resistror&lt;/b&gt; VISHAY&lt;p&gt;
seales container, solder immerson IP67</description>
<wire x1="-3.3" y1="3.3" x2="-3.3" y2="-3.3" width="0.254" layer="51"/>
<wire x1="-3.3" y1="-3.3" x2="3.3" y2="-3.3" width="0.254" layer="51"/>
<wire x1="3.3" y1="-3.3" x2="3.3" y2="3.3" width="0.254" layer="51"/>
<wire x1="3.3" y1="3.3" x2="-3.3" y2="3.3" width="0.254" layer="51"/>
<wire x1="-0.75" y1="3.3" x2="-3.3" y2="3.3" width="0.254" layer="21"/>
<wire x1="-3.3" y1="3.3" x2="-3.3" y2="-3.3" width="0.254" layer="21"/>
<wire x1="-1.75" y1="-3.3" x2="1.75" y2="-3.3" width="0.254" layer="21"/>
<wire x1="3.3" y1="-3.3" x2="3.3" y2="3.3" width="0.254" layer="21"/>
<wire x1="3.3" y1="3.3" x2="0.75" y2="3.3" width="0.254" layer="21"/>
<wire x1="-2.95" y1="3.45" x2="-2.95" y2="4.1" width="0.1016" layer="21"/>
<wire x1="-2.95" y1="4.1" x2="-2.4" y2="4.1" width="0.1016" layer="21"/>
<wire x1="-2.4" y1="4.1" x2="-2.4" y2="3.85" width="0.1016" layer="21"/>
<wire x1="-2.4" y1="3.85" x2="-1.8" y2="3.85" width="0.1016" layer="21"/>
<wire x1="-1.8" y1="3.85" x2="-1.8" y2="4.1" width="0.1016" layer="21"/>
<wire x1="-1.8" y1="4.1" x2="-1.25" y2="4.1" width="0.1016" layer="21"/>
<wire x1="-1.25" y1="4.1" x2="-1.25" y2="3.4" width="0.1016" layer="21"/>
<smd name="1" x="-2.55" y="-3.15" dx="1" dy="3" layer="1"/>
<smd name="2" x="0" y="3.15" dx="1" dy="3" layer="1"/>
<smd name="3" x="2.55" y="-3.15" dx="1" dy="3" layer="1"/>
<text x="-3.84" y="-3.44" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="5.16" y="-3.44" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.3" y1="3.4" x2="0.3" y2="4.4" layer="51"/>
<rectangle x1="-2.85" y1="-4.4" x2="-2.25" y2="-3.4" layer="51"/>
<rectangle x1="2.25" y1="-4.4" x2="2.85" y2="-3.4" layer="51"/>
</package>
<package name="RTRIM3296P">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
Source: &lt;a href="http://www.bourns.com/pdfs/3296.pdf"&gt; Data sheet &lt;/a&gt;</description>
<wire x1="4.675" y1="4.65" x2="-5.1" y2="4.65" width="0.254" layer="21"/>
<wire x1="-5.1" y1="4.65" x2="-5.1" y2="-4.65" width="0.254" layer="21"/>
<wire x1="-5.1" y1="-4.65" x2="4.675" y2="-4.65" width="0.254" layer="21"/>
<wire x1="4.675" y1="-4.65" x2="4.675" y2="4.65" width="0.254" layer="21"/>
<wire x1="4.775" y1="-1.45" x2="6.125" y2="-1.45" width="0.1524" layer="21"/>
<wire x1="6.125" y1="-1.45" x2="6.125" y2="-2.3" width="0.1524" layer="21"/>
<wire x1="6.125" y1="-2.3" x2="5.725" y2="-2.3" width="0.1524" layer="21"/>
<wire x1="5.725" y1="-2.3" x2="5.725" y2="-2.75" width="0.1524" layer="21"/>
<wire x1="5.725" y1="-2.75" x2="6.125" y2="-2.75" width="0.1524" layer="21"/>
<wire x1="6.125" y1="-2.75" x2="6.125" y2="-3.65" width="0.1524" layer="21"/>
<wire x1="6.125" y1="-3.65" x2="4.775" y2="-3.65" width="0.1524" layer="21"/>
<pad name="1" x="0" y="-2.54" drill="0.6096"/>
<pad name="2" x="2.54" y="0" drill="0.6096"/>
<pad name="3" x="0" y="2.54" drill="0.6096"/>
<text x="-5.48" y="-4.5" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-2.17" y="-3.45" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIM3296W">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
Source: &lt;a href="http://www.bourns.com/pdfs/3296.pdf"&gt; Data sheet &lt;/a&gt;</description>
<wire x1="-2.25" y1="4.65" x2="2.25" y2="4.65" width="0.254" layer="21"/>
<wire x1="2.25" y1="4.65" x2="2.25" y2="-4.65" width="0.254" layer="21"/>
<wire x1="2.25" y1="-4.65" x2="-2.25" y2="-4.65" width="0.254" layer="21"/>
<wire x1="-2.25" y1="-4.65" x2="-2.25" y2="4.65" width="0.254" layer="21"/>
<circle x="0" y="-2.55" radius="1.1011" width="0.1524" layer="21"/>
<pad name="1" x="0" y="-2.54" drill="0.6096"/>
<pad name="2" x="0" y="0" drill="0.6096"/>
<pad name="3" x="0" y="2.54" drill="0.6096"/>
<text x="-2.65" y="-4.5" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.95" y="-4.5" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.15" y1="-3.6" x2="0.15" y2="-1.5" layer="51"/>
</package>
<package name="RTRIM3296X">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
Source: &lt;a href="http://www.bourns.com/pdfs/3296.pdf"&gt; Data sheet &lt;/a&gt;</description>
<wire x1="-2.25" y1="4.65" x2="2.25" y2="4.65" width="0.254" layer="21"/>
<wire x1="2.25" y1="4.65" x2="2.25" y2="-4.65" width="0.254" layer="21"/>
<wire x1="2.25" y1="-4.65" x2="-2.25" y2="-4.65" width="0.254" layer="21"/>
<wire x1="-2.25" y1="-4.65" x2="-2.25" y2="4.65" width="0.254" layer="21"/>
<wire x1="-1.1" y1="4.7" x2="-1.1" y2="5.9" width="0.1524" layer="21"/>
<wire x1="-1.1" y1="5.9" x2="-0.25" y2="5.9" width="0.1524" layer="21"/>
<wire x1="-0.25" y1="5.9" x2="-0.25" y2="5.4" width="0.1524" layer="21"/>
<wire x1="-0.25" y1="5.4" x2="0.25" y2="5.4" width="0.1524" layer="21"/>
<wire x1="0.25" y1="5.4" x2="0.25" y2="5.9" width="0.1524" layer="21"/>
<wire x1="0.25" y1="5.9" x2="1.1" y2="5.9" width="0.1524" layer="21"/>
<wire x1="1.1" y1="5.9" x2="1.1" y2="4.7" width="0.1524" layer="21"/>
<pad name="1" x="0" y="-2.54" drill="0.6096"/>
<pad name="2" x="0" y="0" drill="0.6096"/>
<pad name="3" x="0" y="2.54" drill="0.6096"/>
<text x="-2.65" y="-4.5" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.95" y="-4.5" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIM3296Y">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
Source: &lt;a href="http://www.bourns.com/pdfs/3296.pdf"&gt; Data sheet &lt;/a&gt;</description>
<wire x1="-2.25" y1="4.65" x2="2.25" y2="4.65" width="0.254" layer="21"/>
<wire x1="2.25" y1="4.65" x2="2.25" y2="-4.65" width="0.254" layer="21"/>
<wire x1="2.25" y1="-4.65" x2="-2.25" y2="-4.65" width="0.254" layer="21"/>
<wire x1="-2.25" y1="-4.65" x2="-2.25" y2="4.65" width="0.254" layer="21"/>
<circle x="0" y="-2.55" radius="1.1011" width="0.1524" layer="51"/>
<pad name="1" x="1.27" y="-2.54" drill="0.6096"/>
<pad name="2" x="-1.27" y="0" drill="0.6096"/>
<pad name="3" x="1.27" y="2.54" drill="0.6096"/>
<text x="-2.65" y="-4.5" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.95" y="-4.5" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.15" y1="-3.6" x2="0.15" y2="-1.5" layer="21"/>
</package>
<package name="RTRIM74W">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;</description>
<wire x1="2.15" y1="-3.1" x2="2.15" y2="3.1" width="0.1524" layer="21"/>
<wire x1="2.15" y1="3.1" x2="-2" y2="3.1" width="0.1524" layer="21"/>
<wire x1="-2" y1="3.1" x2="-2" y2="-3.1" width="0.1524" layer="21"/>
<wire x1="-2" y1="-3.1" x2="2.15" y2="-3.1" width="0.1524" layer="21"/>
<circle x="1.3" y="2.25" radius="0.5522" width="0.1016" layer="21"/>
<pad name="1" x="-1.25" y="-2.5" drill="0.6096"/>
<pad name="2" x="1.25" y="0" drill="0.6096"/>
<pad name="3" x="-1.25" y="2.5" drill="0.6096"/>
<text x="-2.3" y="-3.15" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.7" y="-3.15" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="0.8" y1="2.1" x2="1.8" y2="2.4" layer="21"/>
</package>
<package name="RTRIM74X">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;</description>
<wire x1="2.15" y1="-3.1" x2="2.15" y2="3.1" width="0.1524" layer="21"/>
<wire x1="2.15" y1="3.1" x2="-2" y2="3.1" width="0.1524" layer="21"/>
<wire x1="-2" y1="3.1" x2="-2" y2="-3.1" width="0.1524" layer="21"/>
<wire x1="-2" y1="-3.1" x2="2.15" y2="-3.1" width="0.1524" layer="21"/>
<wire x1="0.75" y1="-3.15" x2="0.75" y2="-3.7" width="0.1016" layer="25"/>
<wire x1="0.75" y1="-3.7" x2="1.15" y2="-3.7" width="0.1016" layer="25"/>
<wire x1="1.15" y1="-3.7" x2="1.15" y2="-3.5" width="0.1016" layer="25"/>
<wire x1="1.15" y1="-3.5" x2="1.45" y2="-3.5" width="0.1016" layer="25"/>
<wire x1="1.45" y1="-3.5" x2="1.45" y2="-3.7" width="0.1016" layer="25"/>
<wire x1="1.45" y1="-3.7" x2="1.85" y2="-3.7" width="0.1016" layer="25"/>
<wire x1="1.85" y1="-3.7" x2="1.85" y2="-3.15" width="0.1016" layer="25"/>
<pad name="1" x="-1.25" y="-2.5" drill="0.6096"/>
<pad name="2" x="1.25" y="0" drill="0.6096"/>
<pad name="3" x="-1.25" y="2.5" drill="0.6096"/>
<text x="-2.3" y="-3.15" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.7" y="-3.15" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIM3224W">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
Top Adjust</description>
<wire x1="2.3" y1="1.6" x2="2.3" y2="-1.6" width="0.254" layer="51"/>
<wire x1="2.3" y1="-1.6" x2="-2.3" y2="-1.6" width="0.254" layer="51"/>
<wire x1="-2.3" y1="-1.6" x2="-2.3" y2="1.6" width="0.254" layer="51"/>
<wire x1="-2.3" y1="1.6" x2="2.3" y2="1.6" width="0.254" layer="51"/>
<wire x1="1.3" y1="1.6" x2="2.3" y2="1.6" width="0.254" layer="21"/>
<wire x1="2.3" y1="1.6" x2="2.3" y2="-1.6" width="0.254" layer="21"/>
<wire x1="2.3" y1="-1.6" x2="2.1" y2="-1.6" width="0.254" layer="21"/>
<wire x1="-2.1" y1="-1.6" x2="-2.3" y2="-1.6" width="0.254" layer="21"/>
<wire x1="-2.3" y1="-1.6" x2="-2.3" y2="1.6" width="0.254" layer="21"/>
<wire x1="-2.3" y1="1.6" x2="-1.3" y2="1.6" width="0.254" layer="21"/>
<wire x1="0.35" y1="-1.6" x2="-0.35" y2="-1.6" width="0.254" layer="21"/>
<circle x="1.2" y="0.65" radius="0.65" width="0.1016" layer="51"/>
<smd name="1" x="-1.25" y="-1.45" dx="1.3" dy="1.6" layer="1"/>
<smd name="3" x="1.25" y="-1.45" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0" y="1.45" dx="2" dy="1.6" layer="1"/>
<text x="-2.59" y="-2.255" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.86" y="-2.255" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.7" y1="1.7" x2="0.7" y2="1.95" layer="51"/>
<rectangle x1="0.85" y1="-1.95" x2="1.65" y2="-1.7" layer="51"/>
<rectangle x1="-1.65" y1="-1.95" x2="-0.85" y2="-1.7" layer="51"/>
<rectangle x1="0.6" y1="0.55" x2="1.8" y2="0.75" layer="51"/>
</package>
<package name="RTRIM3339P">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
Cermet MIL-R-22097</description>
<circle x="0" y="0" radius="3.81" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.4199" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="0.6096"/>
<pad name="2" x="0" y="-2.54" drill="0.6096"/>
<pad name="3" x="2.54" y="0" drill="0.6096"/>
<text x="-2.515" y="4.205" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.515" y="-5.605" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.016" y1="-0.254" x2="1.016" y2="0.254" layer="21"/>
<rectangle x1="-0.254" y1="-1.016" x2="0.254" y2="1.016" layer="21"/>
</package>
<package name="RTRIM64P">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;
Cermet MIL-R-22097</description>
<wire x1="-4.15" y1="4.8" x2="4.8" y2="4.8" width="0.254" layer="21"/>
<wire x1="4.8" y1="4.8" x2="4.8" y2="-4.8" width="0.254" layer="21"/>
<wire x1="4.8" y1="-4.8" x2="-4.15" y2="-4.8" width="0.254" layer="21"/>
<wire x1="-4.8" y1="-3.9" x2="-4.15" y2="-3.25" width="0.254" layer="21"/>
<wire x1="-4.15" y1="-3.25" x2="-4.15" y2="3.25" width="0.254" layer="21"/>
<wire x1="-4.15" y1="3.25" x2="-4.8" y2="3.9" width="0.254" layer="21"/>
<wire x1="-4.8" y1="3.9" x2="-4.8" y2="4.15" width="0.254" layer="21"/>
<wire x1="-4.8" y1="4.15" x2="-4.15" y2="4.8" width="0.254" layer="21"/>
<wire x1="4.95" y1="-2.25" x2="6.15" y2="-2.25" width="0.1524" layer="21"/>
<wire x1="6.15" y1="-2.25" x2="6.15" y2="-3.05" width="0.1524" layer="21"/>
<wire x1="6.15" y1="-3.05" x2="5.7" y2="-3.05" width="0.1524" layer="21"/>
<wire x1="5.7" y1="-3.05" x2="5.7" y2="-3.6" width="0.1524" layer="21"/>
<wire x1="5.7" y1="-3.6" x2="6.15" y2="-3.6" width="0.1524" layer="21"/>
<wire x1="6.15" y1="-3.6" x2="6.15" y2="-4.45" width="0.1524" layer="21"/>
<wire x1="6.15" y1="-4.45" x2="4.95" y2="-4.45" width="0.1524" layer="21"/>
<wire x1="-4.8" y1="-4.15" x2="-4.8" y2="-3.9" width="0.254" layer="21"/>
<wire x1="-4.15" y1="-4.8" x2="-4.8" y2="-4.15" width="0.254" layer="21"/>
<pad name="1" x="0" y="-2.54" drill="0.6096"/>
<pad name="2" x="2.54" y="0" drill="0.6096"/>
<pad name="3" x="0" y="2.54" drill="0.6096"/>
<text x="-4.75" y="-2.65" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-1.65" y="-3.2" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIM64W">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;
Cermet MIL-R-22097</description>
<wire x1="2.52" y1="-4.8" x2="-2.03" y2="-4.8" width="0.254" layer="21"/>
<wire x1="-2.03" y1="-4.8" x2="-2.03" y2="4.8" width="0.254" layer="21"/>
<wire x1="-2.03" y1="4.8" x2="2.52" y2="4.8" width="0.254" layer="21"/>
<wire x1="2.52" y1="4.8" x2="2.52" y2="3.2" width="0.254" layer="21"/>
<wire x1="2.52" y1="3.2" x2="2.27" y2="3.2" width="0.254" layer="21"/>
<wire x1="2.27" y1="3.2" x2="2.27" y2="-3.2" width="0.254" layer="21"/>
<wire x1="2.27" y1="-3.2" x2="2.52" y2="-3.2" width="0.254" layer="21"/>
<wire x1="2.52" y1="-3.2" x2="2.52" y2="-4.8" width="0.254" layer="21"/>
<circle x="-0.58" y="3.3" radius="1.1" width="0.1524" layer="21"/>
<pad name="1" x="1.27" y="-2.54" drill="0.6096"/>
<pad name="2" x="1.27" y="0" drill="0.6096"/>
<pad name="3" x="1.27" y="2.54" drill="0.6096"/>
<text x="-2.62" y="-4.95" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.35" y="-4.95" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.78" y1="2.25" x2="-0.38" y2="4.35" layer="21"/>
</package>
<package name="RTRIM64X">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;
Cermet MIL-R-22097</description>
<wire x1="2.52" y1="-4.8" x2="-2.03" y2="-4.8" width="0.254" layer="21"/>
<wire x1="-2.03" y1="-4.8" x2="-2.03" y2="4.8" width="0.254" layer="21"/>
<wire x1="-2.03" y1="4.8" x2="2.52" y2="4.8" width="0.254" layer="21"/>
<wire x1="2.52" y1="4.8" x2="2.52" y2="3.2" width="0.254" layer="21"/>
<wire x1="2.52" y1="3.2" x2="2.27" y2="3.2" width="0.254" layer="21"/>
<wire x1="2.27" y1="3.2" x2="2.27" y2="-3.2" width="0.254" layer="21"/>
<wire x1="2.27" y1="-3.2" x2="2.52" y2="-3.2" width="0.254" layer="21"/>
<wire x1="2.52" y1="-3.2" x2="2.52" y2="-4.8" width="0.254" layer="21"/>
<wire x1="-1.83" y1="4.95" x2="-1.83" y2="6.15" width="0.1524" layer="21"/>
<wire x1="-1.83" y1="6.15" x2="-1.03" y2="6.15" width="0.1524" layer="21"/>
<wire x1="-1.03" y1="6.15" x2="-1.03" y2="5.7" width="0.1524" layer="21"/>
<wire x1="-1.03" y1="5.7" x2="-0.48" y2="5.7" width="0.1524" layer="21"/>
<wire x1="-0.48" y1="5.7" x2="-0.48" y2="6.15" width="0.1524" layer="21"/>
<wire x1="-0.48" y1="6.15" x2="0.37" y2="6.15" width="0.1524" layer="21"/>
<wire x1="0.37" y1="6.15" x2="0.37" y2="4.95" width="0.1524" layer="21"/>
<pad name="1" x="1.27" y="-2.54" drill="0.6096"/>
<pad name="2" x="1.27" y="0" drill="0.6096"/>
<pad name="3" x="1.27" y="2.54" drill="0.6096"/>
<text x="-2.43" y="-4.95" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="0.07" y="-3.4" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIM64Y">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;
Cermet MIL-R-22097</description>
<wire x1="1.05" y1="-4.8" x2="-3.3" y2="-4.8" width="0.254" layer="21"/>
<wire x1="-3.3" y1="-4.8" x2="-3.3" y2="4.8" width="0.254" layer="21"/>
<wire x1="-3.3" y1="4.8" x2="1.05" y2="4.8" width="0.254" layer="21"/>
<wire x1="1.05" y1="4.8" x2="1.05" y2="3.2" width="0.254" layer="21"/>
<wire x1="1.05" y1="3.2" x2="0.8" y2="3.2" width="0.254" layer="21"/>
<wire x1="0.8" y1="3.2" x2="0.8" y2="-3.2" width="0.254" layer="21"/>
<wire x1="0.8" y1="-3.2" x2="1.05" y2="-3.2" width="0.254" layer="21"/>
<wire x1="1.05" y1="-3.2" x2="1.05" y2="-4.8" width="0.254" layer="21"/>
<circle x="-1.9" y="-3.35" radius="1.1" width="0.1524" layer="21"/>
<pad name="1" x="0" y="-2.54" drill="0.6096"/>
<pad name="2" x="-2.54" y="0" drill="0.6096"/>
<pad name="3" x="0" y="2.54" drill="0.6096"/>
<text x="-3.84" y="-4.95" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.75" y="-4.95" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.1" y1="-4.4" x2="-1.7" y2="-2.3" layer="21"/>
</package>
<package name="RTRIM64Z">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;
Cermet MIL-R-22097</description>
<wire x1="1.05" y1="-4.8" x2="-3.3" y2="-4.8" width="0.254" layer="21"/>
<wire x1="-3.3" y1="-4.8" x2="-3.3" y2="4.8" width="0.254" layer="21"/>
<wire x1="-3.3" y1="4.8" x2="1.05" y2="4.8" width="0.254" layer="21"/>
<wire x1="1.05" y1="4.8" x2="1.05" y2="3.2" width="0.254" layer="21"/>
<wire x1="1.05" y1="3.2" x2="0.8" y2="3.2" width="0.254" layer="21"/>
<wire x1="0.8" y1="3.2" x2="0.8" y2="-3.2" width="0.254" layer="21"/>
<wire x1="0.8" y1="-3.2" x2="1.05" y2="-3.2" width="0.254" layer="21"/>
<wire x1="1.05" y1="-3.2" x2="1.05" y2="-4.8" width="0.254" layer="21"/>
<wire x1="-3.1" y1="4.95" x2="-3.1" y2="6.15" width="0.1524" layer="21"/>
<wire x1="-3.1" y1="6.15" x2="-2.3" y2="6.15" width="0.1524" layer="21"/>
<wire x1="-2.3" y1="6.15" x2="-2.3" y2="5.7" width="0.1524" layer="21"/>
<wire x1="-2.3" y1="5.7" x2="-1.75" y2="5.7" width="0.1524" layer="21"/>
<wire x1="-1.75" y1="5.7" x2="-1.75" y2="6.15" width="0.1524" layer="21"/>
<wire x1="-1.75" y1="6.15" x2="-0.9" y2="6.15" width="0.1524" layer="21"/>
<wire x1="-0.9" y1="6.15" x2="-0.9" y2="4.95" width="0.1524" layer="21"/>
<pad name="1" x="0" y="-2.54" drill="0.6096"/>
<pad name="2" x="-2.54" y="0" drill="0.6096"/>
<pad name="3" x="0" y="2.54" drill="0.6096"/>
<text x="-3.65" y="-4.9" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.69" y="-4.92" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIM3059Y">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
waschfest MIL-R-22097</description>
<wire x1="-16.37" y1="2.2" x2="-16.37" y2="-2.2" width="0.254" layer="21"/>
<wire x1="-16.37" y1="-2.2" x2="-6.69" y2="-2.2" width="0.254" layer="21"/>
<wire x1="8.81" y1="-2.2" x2="15.36" y2="-2.2" width="0.254" layer="21"/>
<wire x1="15.36" y1="-2.2" x2="15.36" y2="2.2" width="0.254" layer="21"/>
<wire x1="15.36" y1="2.2" x2="8.81" y2="2.2" width="0.254" layer="21"/>
<wire x1="8.81" y1="2.2" x2="8.71" y2="2.1" width="0.254" layer="21"/>
<wire x1="8.71" y1="2.1" x2="-6.59" y2="2.1" width="0.254" layer="21"/>
<wire x1="-6.59" y1="2.1" x2="-6.69" y2="2.2" width="0.254" layer="21"/>
<wire x1="-6.69" y1="2.2" x2="-16.37" y2="2.2" width="0.254" layer="21"/>
<wire x1="15.46" y1="1.35" x2="16.91" y2="1.35" width="0.1524" layer="21"/>
<wire x1="16.91" y1="1.35" x2="16.91" y2="0.35" width="0.1524" layer="21"/>
<wire x1="16.91" y1="0.35" x2="16.41" y2="0.35" width="0.1524" layer="21"/>
<wire x1="16.41" y1="0.35" x2="16.41" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="16.41" y1="-0.35" x2="16.91" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="16.91" y1="-0.35" x2="16.91" y2="-1.35" width="0.1524" layer="21"/>
<wire x1="16.91" y1="-1.35" x2="15.46" y2="-1.35" width="0.1524" layer="21"/>
<wire x1="-6.59" y1="-2.1" x2="-6.69" y2="-2.2" width="0.254" layer="21"/>
<wire x1="8.71" y1="-2.1" x2="8.81" y2="-2.2" width="0.254" layer="21"/>
<wire x1="8.71" y1="-2.1" x2="-6.59" y2="-2.1" width="0.254" layer="21"/>
<pad name="1" x="-6.35" y="1.27" drill="0.9"/>
<pad name="2" x="3.81" y="-1.27" drill="0.9"/>
<pad name="3" x="8.89" y="1.27" drill="0.9"/>
<text x="-16.32" y="2.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.49" y="0" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="RTRIM70Y">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;
waschfest MIL-R-22097</description>
<wire x1="-16.37" y1="2.2" x2="-16.37" y2="-2.2" width="0.254" layer="21"/>
<wire x1="-16.37" y1="-2.2" x2="-6.69" y2="-2.2" width="0.254" layer="21"/>
<wire x1="8.81" y1="-2.2" x2="15.36" y2="-2.2" width="0.254" layer="21"/>
<wire x1="15.36" y1="-2.2" x2="15.36" y2="2.2" width="0.254" layer="21"/>
<wire x1="15.36" y1="2.2" x2="8.81" y2="2.2" width="0.254" layer="21"/>
<wire x1="8.81" y1="2.2" x2="8.71" y2="2.1" width="0.254" layer="21"/>
<wire x1="8.71" y1="2.1" x2="-6.59" y2="2.1" width="0.254" layer="21"/>
<wire x1="-6.59" y1="2.1" x2="-6.69" y2="2.2" width="0.254" layer="21"/>
<wire x1="-6.69" y1="2.2" x2="-16.37" y2="2.2" width="0.254" layer="21"/>
<wire x1="15.46" y1="1.35" x2="16.91" y2="1.35" width="0.1524" layer="21"/>
<wire x1="16.91" y1="1.35" x2="16.91" y2="0.35" width="0.1524" layer="21"/>
<wire x1="16.91" y1="0.35" x2="16.41" y2="0.35" width="0.1524" layer="21"/>
<wire x1="16.41" y1="0.35" x2="16.41" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="16.41" y1="-0.35" x2="16.91" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="16.91" y1="-0.35" x2="16.91" y2="-1.35" width="0.1524" layer="21"/>
<wire x1="16.91" y1="-1.35" x2="15.46" y2="-1.35" width="0.1524" layer="21"/>
<wire x1="-6.59" y1="-2.1" x2="-6.69" y2="-2.2" width="0.254" layer="21"/>
<wire x1="8.71" y1="-2.1" x2="8.81" y2="-2.2" width="0.254" layer="21"/>
<wire x1="8.71" y1="-2.1" x2="-6.59" y2="-2.1" width="0.254" layer="21"/>
<pad name="1" x="-6.35" y="1.27" drill="0.9"/>
<pad name="2" x="3.81" y="-1.27" drill="0.9"/>
<pad name="3" x="8.89" y="1.27" drill="0.9"/>
<text x="-16.32" y="2.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.49" y="0" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="RTRIM3374">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS</description>
<wire x1="-1.9" y1="2.35" x2="1.9" y2="2.35" width="0.254" layer="51"/>
<wire x1="1.9" y1="2.35" x2="1.9" y2="-2.35" width="0.254" layer="51"/>
<wire x1="1.9" y1="-2.35" x2="0.6" y2="-2.35" width="0.254" layer="51"/>
<wire x1="0.6" y1="-2.35" x2="0.6" y2="-2.15" width="0.254" layer="51"/>
<wire x1="0.6" y1="-2.15" x2="-0.6" y2="-2.15" width="0.254" layer="51"/>
<wire x1="-0.6" y1="-2.15" x2="-0.6" y2="-2.35" width="0.254" layer="51"/>
<wire x1="-0.6" y1="-2.35" x2="-1.9" y2="-2.35" width="0.254" layer="51"/>
<wire x1="-1.9" y1="-2.35" x2="-1.9" y2="2.35" width="0.254" layer="51"/>
<wire x1="-0.25" y1="-2.15" x2="0.25" y2="-2.15" width="0.254" layer="21"/>
<wire x1="-1.9" y1="-1.15" x2="-1.9" y2="2.35" width="0.254" layer="21"/>
<wire x1="-1.9" y1="2.35" x2="-1.2" y2="2.35" width="0.254" layer="21"/>
<wire x1="1.2" y1="2.35" x2="1.9" y2="2.35" width="0.254" layer="21"/>
<wire x1="1.9" y1="2.35" x2="1.9" y2="-1.15" width="0.254" layer="21"/>
<circle x="0" y="0" radius="1.65" width="0.1524" layer="51"/>
<smd name="2" x="0" y="2.1" dx="1.98" dy="2.17" layer="1"/>
<smd name="1" x="-1.25" y="-2.5" dx="1.5" dy="2.2" layer="1"/>
<smd name="3" x="1.25" y="-2.5" dx="1.5" dy="2.2" layer="1"/>
<text x="-2.2" y="-2.5" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.55" y="-2.5" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.25" y1="-1.3" x2="0.25" y2="1.3" layer="51"/>
<rectangle x1="-1.3" y1="-0.2" x2="1.3" y2="0.3" layer="51"/>
</package>
<package name="RTRIM3299W">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS</description>
<wire x1="-2.78" y1="4.35" x2="3.07" y2="4.35" width="0.254" layer="21"/>
<wire x1="3.07" y1="4.35" x2="3.07" y2="-4.35" width="0.254" layer="21"/>
<wire x1="3.07" y1="-4.35" x2="-2.78" y2="-4.35" width="0.254" layer="21"/>
<wire x1="-2.78" y1="-4.35" x2="-2.78" y2="4.35" width="0.254" layer="21"/>
<circle x="-1.23" y="2.75" radius="1.1011" width="0.1524" layer="21"/>
<pad name="1" x="1.27" y="-2.54" drill="0.6096"/>
<pad name="2" x="1.27" y="0" drill="0.6096"/>
<pad name="3" x="1.27" y="2.54" drill="0.6096"/>
<text x="-3.38" y="-4.5" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.77" y="-4.5" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.38" y1="1.7" x2="-1.08" y2="3.8" layer="21"/>
</package>
<package name="RTRIM43P">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; Spectrol&lt;p&gt;
waschfest MIL-R-22097</description>
<wire x1="-9.2" y1="2.2" x2="-9.2" y2="-2.2" width="0.254" layer="21"/>
<wire x1="-9.2" y1="-2.2" x2="8.1" y2="-2.2" width="0.254" layer="21"/>
<wire x1="8.1" y1="-2.2" x2="8.1" y2="2.2" width="0.254" layer="21"/>
<wire x1="8.1" y1="2.2" x2="-9.2" y2="2.2" width="0.254" layer="21"/>
<wire x1="8.2" y1="1.35" x2="9.65" y2="1.35" width="0.1524" layer="21"/>
<wire x1="9.65" y1="1.35" x2="9.65" y2="0.35" width="0.1524" layer="21"/>
<wire x1="9.65" y1="0.35" x2="9.15" y2="0.35" width="0.1524" layer="21"/>
<wire x1="9.15" y1="0.35" x2="9.15" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="9.15" y1="-0.35" x2="9.65" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="9.65" y1="-0.35" x2="9.65" y2="-1.35" width="0.1524" layer="21"/>
<wire x1="9.65" y1="-1.35" x2="8.2" y2="-1.35" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="1.27" drill="0.9"/>
<pad name="2" x="0" y="-1.27" drill="0.9"/>
<pad name="3" x="5.08" y="1.27" drill="0.9"/>
<text x="-9.15" y="2.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-6.3" y="0" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="RTRIM3006P">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;</description>
<wire x1="-10.6" y1="2.25" x2="-10.6" y2="-2.25" width="0.254" layer="21"/>
<wire x1="-10.6" y1="-2.25" x2="8.25" y2="-2.25" width="0.254" layer="21"/>
<wire x1="8.25" y1="-2.25" x2="8.25" y2="2.25" width="0.254" layer="21"/>
<wire x1="8.25" y1="2.25" x2="-10.6" y2="2.25" width="0.254" layer="21"/>
<wire x1="8.35" y1="1.35" x2="9.8" y2="1.35" width="0.1524" layer="21"/>
<wire x1="9.8" y1="1.35" x2="9.8" y2="0.35" width="0.1524" layer="21"/>
<wire x1="9.8" y1="0.35" x2="9.3" y2="0.35" width="0.1524" layer="21"/>
<wire x1="9.3" y1="0.35" x2="9.3" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="9.3" y1="-0.35" x2="9.8" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="9.8" y1="-0.35" x2="9.8" y2="-1.35" width="0.1524" layer="21"/>
<wire x1="9.8" y1="-1.35" x2="8.35" y2="-1.35" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="1.27" drill="0.6096"/>
<pad name="2" x="0" y="-1.27" drill="0.6096"/>
<pad name="3" x="5.08" y="1.27" drill="0.6096"/>
<text x="-10.7" y="2.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-10.05" y="-1.65" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="RTRIMT18">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; VISHAY&lt;p&gt;
abgedichtet nach IP67</description>
<wire x1="-10.75" y1="2.2" x2="-10.75" y2="-2.2" width="0.254" layer="21"/>
<wire x1="-10.75" y1="-2.2" x2="8.1" y2="-2.2" width="0.254" layer="21"/>
<wire x1="8.1" y1="-2.2" x2="8.1" y2="2.2" width="0.254" layer="21"/>
<wire x1="8.1" y1="2.2" x2="-10.75" y2="2.2" width="0.254" layer="21"/>
<wire x1="8.2" y1="1.35" x2="9.65" y2="1.35" width="0.1524" layer="21"/>
<wire x1="9.65" y1="1.35" x2="9.65" y2="0.35" width="0.1524" layer="21"/>
<wire x1="9.65" y1="0.35" x2="9.15" y2="0.35" width="0.1524" layer="21"/>
<wire x1="9.15" y1="0.35" x2="9.15" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="9.15" y1="-0.35" x2="9.65" y2="-0.35" width="0.1524" layer="21"/>
<wire x1="9.65" y1="-0.35" x2="9.65" y2="-1.35" width="0.1524" layer="21"/>
<wire x1="9.65" y1="-1.35" x2="8.2" y2="-1.35" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="1.27" drill="0.9"/>
<pad name="2" x="0" y="-1.27" drill="0.9"/>
<pad name="3" x="5.08" y="1.27" drill="0.9"/>
<text x="-10.7" y="2.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-10.2" y="-1.65" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="RTRIMT93XA">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; VISHAY&lt;p&gt;
Cermet, abgedichtet nach IP67</description>
<wire x1="2.15" y1="-4.75" x2="2.15" y2="4.75" width="0.254" layer="21"/>
<wire x1="2.15" y1="4.75" x2="-2.55" y2="4.75" width="0.254" layer="21"/>
<wire x1="-2.55" y1="4.75" x2="-2.55" y2="-4.75" width="0.254" layer="21"/>
<wire x1="-2.55" y1="-4.75" x2="2.15" y2="-4.75" width="0.254" layer="21"/>
<wire x1="-0.3" y1="4.9" x2="-0.3" y2="6.05" width="0.1524" layer="21"/>
<wire x1="-0.3" y1="6.05" x2="-1.1" y2="6.05" width="0.1524" layer="21"/>
<wire x1="-1.1" y1="6.05" x2="-1.1" y2="5.85" width="0.1524" layer="21"/>
<wire x1="-1.1" y1="5.85" x2="-1.5" y2="5.85" width="0.1524" layer="21"/>
<wire x1="-1.5" y1="5.85" x2="-1.5" y2="6.05" width="0.1524" layer="21"/>
<wire x1="-1.5" y1="6.05" x2="-2.3" y2="6.05" width="0.1524" layer="21"/>
<wire x1="-2.3" y1="6.05" x2="-2.3" y2="4.9" width="0.1524" layer="21"/>
<pad name="1" x="0" y="-2.54" drill="0.6096"/>
<pad name="2" x="0" y="0" drill="0.6096"/>
<pad name="3" x="0" y="2.54" drill="0.6096"/>
<text x="-3.04" y="-4.89" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.01" y="-4.89" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIMT93XB">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; VISHAY&lt;p&gt;
Cermet, abgedichtet nach IP67</description>
<wire x1="2.35" y1="-4.75" x2="2.35" y2="4.75" width="0.254" layer="21"/>
<wire x1="2.35" y1="4.75" x2="-2.35" y2="4.75" width="0.254" layer="21"/>
<wire x1="-2.35" y1="4.75" x2="-2.35" y2="-4.75" width="0.254" layer="21"/>
<wire x1="-2.35" y1="-4.75" x2="2.35" y2="-4.75" width="0.254" layer="21"/>
<wire x1="-0.1" y1="4.9" x2="-0.1" y2="6.05" width="0.1524" layer="21"/>
<wire x1="-0.1" y1="6.05" x2="-0.9" y2="6.05" width="0.1524" layer="21"/>
<wire x1="-0.9" y1="6.05" x2="-0.9" y2="5.85" width="0.1524" layer="21"/>
<wire x1="-0.9" y1="5.85" x2="-1.3" y2="5.85" width="0.1524" layer="21"/>
<wire x1="-1.3" y1="5.85" x2="-1.3" y2="6.05" width="0.1524" layer="21"/>
<wire x1="-1.3" y1="6.05" x2="-2.1" y2="6.05" width="0.1524" layer="21"/>
<wire x1="-2.1" y1="6.05" x2="-2.1" y2="4.9" width="0.1524" layer="21"/>
<pad name="1" x="1.27" y="-2.54" drill="0.6096"/>
<pad name="2" x="-1.27" y="0" drill="0.6096"/>
<pad name="3" x="1.27" y="2.54" drill="0.6096"/>
<text x="-2.79" y="-4.89" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.01" y="-4.89" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="RTRIMT93YA">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; VISHAY&lt;p&gt;
Cermet, abgedichtet nach IP67</description>
<wire x1="2.15" y1="-4.75" x2="2.15" y2="4.75" width="0.254" layer="21"/>
<wire x1="2.15" y1="4.75" x2="-2.55" y2="4.75" width="0.254" layer="21"/>
<wire x1="-2.55" y1="4.75" x2="-2.55" y2="-4.75" width="0.254" layer="21"/>
<wire x1="-2.55" y1="-4.75" x2="2.15" y2="-4.75" width="0.254" layer="21"/>
<wire x1="-0.75" y1="2.6" x2="-0.3" y2="3.3" width="0.1524" layer="21" curve="-311.390901"/>
<wire x1="-0.75" y1="2.6" x2="-0.3" y2="3.3" width="0.1524" layer="51" curve="48.609099"/>
<pad name="1" x="0" y="-2.54" drill="0.6096"/>
<pad name="2" x="0" y="0" drill="0.6096"/>
<pad name="3" x="0" y="2.54" drill="0.6096"/>
<text x="-3.04" y="-4.89" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.01" y="-4.89" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.45" y1="2.5" x2="-1.15" y2="4.4" layer="21"/>
</package>
<package name="RTRIMT93YB">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; VISHAY&lt;p&gt;
Cermet, abgedichtet nach IP67</description>
<wire x1="2.35" y1="-4.75" x2="2.35" y2="4.75" width="0.254" layer="21"/>
<wire x1="2.35" y1="4.75" x2="-2.35" y2="4.75" width="0.254" layer="21"/>
<wire x1="-2.35" y1="4.75" x2="-2.35" y2="-4.75" width="0.254" layer="21"/>
<wire x1="-2.35" y1="-4.75" x2="2.35" y2="-4.75" width="0.254" layer="21"/>
<circle x="-1.05" y="3.45" radius="1.0049" width="0.1524" layer="21"/>
<pad name="1" x="1.27" y="-2.54" drill="0.6096"/>
<pad name="2" x="-1.27" y="0" drill="0.6096"/>
<pad name="3" x="1.27" y="2.54" drill="0.6096"/>
<text x="-2.79" y="-4.89" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.01" y="-4.89" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.2" y1="2.5" x2="-0.9" y2="4.4" layer="21"/>
</package>
<package name="RTRIM3314G">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt; BOURNS&lt;p&gt;
0,25W, 20%&lt;br&gt;
Source: &lt;a href="http://www.bourns.com/pdfs/3314.pdf"&gt; Data sheet&lt;/a&gt;</description>
<wire x1="2.15" y1="2.15" x2="2.15" y2="-2.15" width="0.254" layer="51"/>
<wire x1="2.15" y1="-2.15" x2="-2.15" y2="-2.15" width="0.254" layer="51"/>
<wire x1="-2.15" y1="-2.15" x2="-2.15" y2="2.15" width="0.254" layer="51"/>
<wire x1="-2.15" y1="2.15" x2="2.15" y2="2.15" width="0.254" layer="51"/>
<wire x1="2.15" y1="-2.15" x2="2.15" y2="2.15" width="0.254" layer="21"/>
<wire x1="2.15" y1="2.15" x2="1.3" y2="2.15" width="0.254" layer="21"/>
<wire x1="-1.3" y1="2.15" x2="-2.15" y2="2.15" width="0.254" layer="21"/>
<wire x1="-2.15" y1="2.15" x2="-2.15" y2="-2.15" width="0.254" layer="21"/>
<wire x1="0.1" y1="-2.15" x2="-0.1" y2="-2.15" width="0.254" layer="21"/>
<wire x1="-0.5" y1="-0.9" x2="0.9" y2="0.5" width="0.1016" layer="21"/>
<wire x1="-0.85" y1="-0.55" x2="0.55" y2="0.85" width="0.1016" layer="21"/>
<circle x="0" y="0" radius="1.1" width="0.1016" layer="21"/>
<smd name="3" x="-1.15" y="-2.75" dx="1.3" dy="1.3" layer="1" rot="R180"/>
<smd name="1" x="1.15" y="-2.75" dx="1.3" dy="1.3" layer="1" rot="R180"/>
<smd name="2" x="0" y="2.75" dx="2" dy="1.3" layer="1"/>
<text x="-2.64" y="-2.99" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.01" y="-2.99" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="PINHD2">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="KA2KA">
<wire x1="-1.27" y1="1.27" x2="-3.81" y2="0" width="0.254" layer="94"/>
<wire x1="-3.81" y1="0" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-3.81" y1="-1.27" x2="-3.81" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-3.81" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="-3.81" y1="0" x2="-3.81" y2="1.27" width="0.254" layer="94"/>
<wire x1="3.81" y1="1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="3.81" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-3.81" y1="0" x2="1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="3.81" y1="-1.27" x2="3.81" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="1.27" width="0.254" layer="94"/>
<circle x="0" y="0" radius="0.127" width="0.4064" layer="94"/>
<text x="0.762" y="2.0066" size="1.778" layer="95">&gt;NAME</text>
<text x="-4.826" y="-3.4544" size="1.778" layer="96">&gt;VALUE</text>
<pin name="C" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
<pin name="A" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="AC" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
</symbol>
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
<symbol name="MAX7450">
<wire x1="-7.62" y1="-7.62" x2="-7.62" y2="17.78" width="0.254" layer="94"/>
<wire x1="-7.62" y1="17.78" x2="15.24" y2="17.78" width="0.254" layer="94"/>
<wire x1="15.24" y1="17.78" x2="15.24" y2="-7.62" width="0.254" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<pin name="VCC" x="-10.16" y="12.7" length="middle"/>
<pin name="IN" x="-10.16" y="7.62" length="middle"/>
<pin name="GND" x="-10.16" y="2.54" length="middle"/>
<pin name="VSS" x="-10.16" y="-2.54" length="middle"/>
<pin name="AGCD" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="OUT" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="GSET" x="17.78" y="7.62" length="middle" rot="R180"/>
<pin name="LOS" x="17.78" y="12.7" length="middle" rot="R180"/>
<pin name="VSS@1" x="-10.16" y="-10.16" length="middle"/>
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
<symbol name="LM1881">
<wire x1="-15.24" y1="17.78" x2="15.24" y2="17.78" width="0.254" layer="94"/>
<wire x1="15.24" y1="17.78" x2="15.24" y2="-2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-2.54" x2="-15.24" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-2.54" x2="-15.24" y2="17.78" width="0.254" layer="94"/>
<text x="-15.24" y="-7.62" size="1.778" layer="94">&gt;Name</text>
<pin name="SYNC" x="-20.32" y="15.24" length="middle" direction="out"/>
<pin name="INPUT" x="-20.32" y="10.16" length="middle" direction="in"/>
<pin name="VERT" x="-20.32" y="5.08" length="middle" direction="out"/>
<pin name="GND" x="-20.32" y="0" length="middle" direction="pwr"/>
<pin name="BURST" x="20.32" y="0" length="middle" direction="out" rot="R180"/>
<pin name="R_SET" x="20.32" y="5.08" length="middle" rot="R180"/>
<pin name="ODD/EVEN" x="20.32" y="10.16" length="middle" direction="out" rot="R180"/>
<pin name="VCC" x="20.32" y="15.24" length="middle" direction="pwr" rot="R180"/>
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
<symbol name="OPAMP">
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="0" width="0.4064" layer="94"/>
<wire x1="5.08" y1="0" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="3.175" x2="-3.81" y2="1.905" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="94"/>
<text x="2.54" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="-IN" x="-7.62" y="-2.54" visible="pad" length="short" direction="in"/>
<pin name="+IN" x="-7.62" y="2.54" visible="pad" length="short" direction="in"/>
<pin name="OUT" x="7.62" y="0" visible="pad" length="short" direction="out" rot="R180"/>
</symbol>
<symbol name="PWR+-">
<text x="1.27" y="3.175" size="0.8128" layer="93" rot="R90">V+</text>
<text x="1.27" y="-4.445" size="0.8128" layer="93" rot="R90">V-</text>
<pin name="V+" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
<pin name="V-" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
</symbol>
<symbol name="4053">
<wire x1="-7.62" y1="-17.78" x2="7.62" y2="-17.78" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-17.78" x2="7.62" y2="17.78" width="0.4064" layer="94"/>
<wire x1="7.62" y1="17.78" x2="-7.62" y2="17.78" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="17.78" x2="-7.62" y2="-17.78" width="0.4064" layer="94"/>
<text x="-7.62" y="18.415" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-20.32" size="1.778" layer="96">&gt;VALUE</text>
<pin name="Y1" x="-12.7" y="5.08" length="middle"/>
<pin name="Y0" x="-12.7" y="7.62" length="middle"/>
<pin name="Z1" x="-12.7" y="-2.54" length="middle"/>
<pin name="Z" x="12.7" y="0" length="middle" rot="R180"/>
<pin name="Z0" x="-12.7" y="0" length="middle"/>
<pin name="INH" x="-12.7" y="-7.62" length="middle" direction="in"/>
<pin name="C" x="-12.7" y="-15.24" length="middle" direction="in"/>
<pin name="B" x="-12.7" y="-12.7" length="middle" direction="in"/>
<pin name="A" x="-12.7" y="-10.16" length="middle" direction="in"/>
<pin name="X0" x="-12.7" y="15.24" length="middle"/>
<pin name="X1" x="-12.7" y="12.7" length="middle"/>
<pin name="X" x="12.7" y="15.24" length="middle" rot="R180"/>
<pin name="Y" x="12.7" y="7.62" length="middle" rot="R180"/>
</symbol>
<symbol name="PWR+VEE">
<text x="-2.54" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.175" y="-5.842" size="1.27" layer="95" rot="R90">VEE</text>
<text x="1.905" y="-5.842" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="2.54" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="VEE" x="-5.08" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="GND" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
<symbol name="4011">
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.4064" layer="94" curve="-180"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.4064" layer="94"/>
<text x="2.54" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="I0" x="-7.62" y="2.54" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="I1" x="-7.62" y="-2.54" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="O" x="7.62" y="0" visible="pad" length="middle" direction="out" function="dot" rot="R180"/>
</symbol>
<symbol name="PWRN">
<text x="-1.27" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="2.54" size="1.27" layer="95" rot="R90">VDD</text>
<text x="1.905" y="-5.842" size="1.27" layer="95" rot="R90">VSS</text>
<pin name="VSS" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VDD" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
<symbol name="PNP">
<description>PNP Transistor</description>
<wire x1="2.0861" y1="1.6779" x2="1.5781" y2="2.5941" width="0.1524" layer="94"/>
<wire x1="1.5781" y1="2.5941" x2="0.5159" y2="1.478" width="0.1524" layer="94"/>
<wire x1="0.5159" y1="1.478" x2="2.0861" y2="1.6779" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="1.808" y2="2.1239" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="0.508" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="1.905" y1="1.778" x2="1.524" y2="2.413" width="0.254" layer="94"/>
<wire x1="1.524" y1="2.413" x2="0.762" y2="1.651" width="0.254" layer="94"/>
<wire x1="0.762" y1="1.651" x2="1.778" y2="1.778" width="0.254" layer="94"/>
<wire x1="1.778" y1="1.778" x2="1.524" y2="2.159" width="0.254" layer="94"/>
<wire x1="1.524" y1="2.159" x2="1.143" y2="1.905" width="0.254" layer="94"/>
<wire x1="1.143" y1="1.905" x2="1.524" y2="1.905" width="0.254" layer="94"/>
<text x="3.81" y="0.254" size="1.778" layer="95">&gt;NAME</text>
<text x="3.81" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-2.54" x2="0.508" y2="2.54" layer="94"/>
<pin name="B" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="E" x="2.54" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="C" x="2.54" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
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
<symbol name="NPN">
<description>NPN Transistor</description>
<wire x1="2.54" y1="2.54" x2="0.508" y2="1.524" width="0.1524" layer="94"/>
<wire x1="1.778" y1="-1.524" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="1.27" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.778" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="1.54" y1="-2.04" x2="0.308" y2="-1.424" width="0.1524" layer="94"/>
<wire x1="1.524" y1="-2.413" x2="2.286" y2="-2.413" width="0.254" layer="94"/>
<wire x1="2.286" y1="-2.413" x2="1.778" y2="-1.778" width="0.254" layer="94"/>
<wire x1="1.778" y1="-1.778" x2="1.524" y2="-2.286" width="0.254" layer="94"/>
<wire x1="1.524" y1="-2.286" x2="1.905" y2="-2.286" width="0.254" layer="94"/>
<wire x1="1.905" y1="-2.286" x2="1.778" y2="-2.032" width="0.254" layer="94"/>
<text x="3.81" y="0.508" size="1.778" layer="95">&gt;NAME</text>
<text x="3.81" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-2.54" x2="0.508" y2="2.54" layer="94"/>
<pin name="B" x="-2.54" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="E" x="2.54" y="-5.08" visible="off" length="short" direction="pas" swaplevel="3" rot="R90"/>
<pin name="C" x="2.54" y="5.08" visible="off" length="short" direction="pas" swaplevel="2" rot="R270"/>
</symbol>
<symbol name="R-TRIM">
<wire x1="0.762" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="-0.762" y1="2.54" x2="-0.762" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="-2.54" x2="0.762" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="1.651" y2="0" width="0.1524" layer="94"/>
<wire x1="1.651" y1="0" x2="-1.8796" y2="1.7526" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="5.08" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="-0.762" y2="2.54" width="0.254" layer="94"/>
<wire x1="-0.762" y1="-2.54" x2="0.762" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.286" y1="1.27" x2="-1.651" y2="2.413" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-0.508" x2="-3.048" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-0.508" x2="-2.032" y2="-1.524" width="0.1524" layer="94"/>
<text x="-5.969" y="-3.81" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="-3.81" y="-3.81" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="A" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="E" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="S" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X2" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X02/90">
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
<deviceset name="DIODE_2CACA-" prefix="D" uservalue="yes">
<description>&lt;b&gt;2 Diodes - Cathode-Anode|Cathode-Anode&lt;/b&gt;</description>
<gates>
<gate name="-B1" symbol="KA2KA" x="0" y="0"/>
</gates>
<devices>
<device name="SOT23" package="SOT23">
<connects>
<connect gate="-B1" pin="A" pad="1"/>
<connect gate="-B1" pin="AC" pad="3"/>
<connect gate="-B1" pin="C" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
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
<deviceset name="MAX7450">
<gates>
<gate name="G$1" symbol="MAX7450" x="-2.54" y="-2.54"/>
</gates>
<devices>
<device name="" package="SO08-EXP">
<connects>
<connect gate="G$1" pin="AGCD" pad="5"/>
<connect gate="G$1" pin="GND" pad="3"/>
<connect gate="G$1" pin="GSET" pad="7"/>
<connect gate="G$1" pin="IN" pad="2"/>
<connect gate="G$1" pin="LOS" pad="8"/>
<connect gate="G$1" pin="OUT" pad="6"/>
<connect gate="G$1" pin="VCC" pad="1"/>
<connect gate="G$1" pin="VSS" pad="4"/>
<connect gate="G$1" pin="VSS@1" pad="EXP"/>
</connects>
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
<deviceset name="LM1881">
<gates>
<gate name="G$1" symbol="LM1881" x="0" y="0"/>
</gates>
<devices>
<device name="DIL" package="DIL08">
<connects>
<connect gate="G$1" pin="BURST" pad="5"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="INPUT" pad="2"/>
<connect gate="G$1" pin="ODD/EVEN" pad="7"/>
<connect gate="G$1" pin="R_SET" pad="6"/>
<connect gate="G$1" pin="SYNC" pad="1"/>
<connect gate="G$1" pin="VCC" pad="8"/>
<connect gate="G$1" pin="VERT" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SO8" package="SO08">
<connects>
<connect gate="G$1" pin="BURST" pad="5"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="INPUT" pad="2"/>
<connect gate="G$1" pin="ODD/EVEN" pad="7"/>
<connect gate="G$1" pin="R_SET" pad="6"/>
<connect gate="G$1" pin="SYNC" pad="1"/>
<connect gate="G$1" pin="VCC" pad="8"/>
<connect gate="G$1" pin="VERT" pad="3"/>
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
<deviceset name="CON-SYNCBUS" prefix="X">
<description>.100" (2.54mm) Center Header - 4 Pin</description>
<gates>
<gate name="_ODD/EVEN" symbol="MV" x="0" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="_BPORCH" symbol="M" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="_VSYNC" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="_HSYNC" symbol="M" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2041">
<connects>
<connect gate="_BPORCH" pin="S" pad="2"/>
<connect gate="_HSYNC" pin="S" pad="4"/>
<connect gate="_ODD/EVEN" pin="S" pad="1"/>
<connect gate="_VSYNC" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2041" constant="no"/>
<attribute name="OC_FARNELL" value="1462920" constant="no"/>
<attribute name="OC_NEWARK" value="38C0355" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LM833" prefix="IC">
<description>&lt;b&gt;OP AMP&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="OPAMP" x="5.08" y="0" swaplevel="1"/>
<gate name="B" symbol="OPAMP" x="27.94" y="0" swaplevel="1"/>
<gate name="P" symbol="PWR+-" x="5.08" y="0" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL08">
<connects>
<connect gate="A" pin="+IN" pad="3"/>
<connect gate="A" pin="-IN" pad="2"/>
<connect gate="A" pin="OUT" pad="1"/>
<connect gate="B" pin="+IN" pad="5"/>
<connect gate="B" pin="-IN" pad="6"/>
<connect gate="B" pin="OUT" pad="7"/>
<connect gate="P" pin="V+" pad="8"/>
<connect gate="P" pin="V-" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="D" package="SO08">
<connects>
<connect gate="A" pin="+IN" pad="3"/>
<connect gate="A" pin="-IN" pad="2"/>
<connect gate="A" pin="OUT" pad="1"/>
<connect gate="B" pin="+IN" pad="5"/>
<connect gate="B" pin="-IN" pad="6"/>
<connect gate="B" pin="OUT" pad="7"/>
<connect gate="P" pin="V+" pad="8"/>
<connect gate="P" pin="V-" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="4053" prefix="IC">
<description>Triple 2-channel &lt;b&gt;ANALOG MULTIPLEXER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="4053" x="20.32" y="0"/>
<gate name="P" symbol="PWR+VEE" x="-5.08" y="0" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL16">
<connects>
<connect gate="A" pin="A" pad="11"/>
<connect gate="A" pin="B" pad="10"/>
<connect gate="A" pin="C" pad="9"/>
<connect gate="A" pin="INH" pad="6"/>
<connect gate="A" pin="X" pad="14"/>
<connect gate="A" pin="X0" pad="12"/>
<connect gate="A" pin="X1" pad="13"/>
<connect gate="A" pin="Y" pad="15"/>
<connect gate="A" pin="Y0" pad="2"/>
<connect gate="A" pin="Y1" pad="1"/>
<connect gate="A" pin="Z" pad="4"/>
<connect gate="A" pin="Z0" pad="5"/>
<connect gate="A" pin="Z1" pad="3"/>
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
<connect gate="P" pin="VEE" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="D" package="SO16">
<connects>
<connect gate="A" pin="A" pad="11"/>
<connect gate="A" pin="B" pad="10"/>
<connect gate="A" pin="C" pad="9"/>
<connect gate="A" pin="INH" pad="6"/>
<connect gate="A" pin="X" pad="14"/>
<connect gate="A" pin="X0" pad="12"/>
<connect gate="A" pin="X1" pad="13"/>
<connect gate="A" pin="Y" pad="15"/>
<connect gate="A" pin="Y0" pad="2"/>
<connect gate="A" pin="Y1" pad="1"/>
<connect gate="A" pin="Z" pad="4"/>
<connect gate="A" pin="Z0" pad="5"/>
<connect gate="A" pin="Z1" pad="3"/>
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
<connect gate="P" pin="VEE" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="4011" prefix="IC">
<description>Quad 2-input &lt;b&gt;NAND&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="4011" x="15.24" y="5.08" swaplevel="1"/>
<gate name="B" symbol="4011" x="15.24" y="-10.16" swaplevel="1"/>
<gate name="C" symbol="4011" x="38.1" y="5.08" swaplevel="1"/>
<gate name="D" symbol="4011" x="38.1" y="-10.16" swaplevel="1"/>
<gate name="P" symbol="PWRN" x="-2.54" y="-2.54" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL14">
<connects>
<connect gate="A" pin="I0" pad="1"/>
<connect gate="A" pin="I1" pad="2"/>
<connect gate="A" pin="O" pad="3"/>
<connect gate="B" pin="I0" pad="5"/>
<connect gate="B" pin="I1" pad="6"/>
<connect gate="B" pin="O" pad="4"/>
<connect gate="C" pin="I0" pad="8"/>
<connect gate="C" pin="I1" pad="9"/>
<connect gate="C" pin="O" pad="10"/>
<connect gate="D" pin="I0" pad="12"/>
<connect gate="D" pin="I1" pad="13"/>
<connect gate="D" pin="O" pad="11"/>
<connect gate="P" pin="VDD" pad="14"/>
<connect gate="P" pin="VSS" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="D" package="SO14">
<connects>
<connect gate="A" pin="I0" pad="1"/>
<connect gate="A" pin="I1" pad="2"/>
<connect gate="A" pin="O" pad="3"/>
<connect gate="B" pin="I0" pad="5"/>
<connect gate="B" pin="I1" pad="6"/>
<connect gate="B" pin="O" pad="4"/>
<connect gate="C" pin="I0" pad="8"/>
<connect gate="C" pin="I1" pad="9"/>
<connect gate="C" pin="O" pad="10"/>
<connect gate="D" pin="I0" pad="12"/>
<connect gate="D" pin="I1" pad="13"/>
<connect gate="D" pin="O" pad="11"/>
<connect gate="P" pin="VDD" pad="14"/>
<connect gate="P" pin="VSS" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TRANS-PNP" prefix="T" uservalue="yes">
<description>PNP Transistror</description>
<gates>
<gate name="G$1" symbol="PNP" x="0" y="0"/>
</gates>
<devices>
<device name="SOT23-BEC" package="SOT23-BEC">
<connects>
<connect gate="G$1" pin="B" pad="B"/>
<connect gate="G$1" pin="C" pad="C"/>
<connect gate="G$1" pin="E" pad="E"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SOT23-EBC" package="SOT23-EBC">
<connects>
<connect gate="G$1" pin="B" pad="B"/>
<connect gate="G$1" pin="C" pad="C"/>
<connect gate="G$1" pin="E" pad="E"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SOT23-BCE" package="SOT23-BCE">
<connects>
<connect gate="G$1" pin="B" pad="B"/>
<connect gate="G$1" pin="C" pad="C"/>
<connect gate="G$1" pin="E" pad="E"/>
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
<deviceset name="TRANS-NPN" prefix="T" uservalue="yes">
<description>&lt;b&gt;NPN Transistor&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="NPN" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT23-BEC">
<connects>
<connect gate="G$1" pin="B" pad="B"/>
<connect gate="G$1" pin="C" pad="C"/>
<connect gate="G$1" pin="E" pad="E"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="R-TRIMM" prefix="R" uservalue="yes">
<description>&lt;b&gt;Trimm resistor&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="R-TRIM" x="0" y="0"/>
</gates>
<devices>
<device name="3304W" package="RTRIM3304W">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3165W" package="RTRIM3165W">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3202" package="RTRIM3202">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3314J" package="RTRIM3314J">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4G/J" package="RTRIM4G/J">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CVR42A" package="RTRIMCVR42A">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3214W" package="RTRIM3214W">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3224G" package="RTRIM3224G">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3224J" package="RTRIM3224J">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3224X" package="RTRIM3224X">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3103" package="RTRIM3103">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5W" package="RTRIM5W">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5X" package="RTRIM5X">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TSM53YJ" package="RTRIMTSM53YJ">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TSM53YL" package="RTRIMTSM53YL">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TS63X" package="RTRIMTS63X">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TS63Y" package="RTRIMTS63Y">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TS63Z" package="RTRIMTS63Z">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3296P" package="RTRIM3296P">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3296W" package="RTRIM3296W">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3296X" package="RTRIM3296X">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3296Y" package="RTRIM3296Y">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="74W" package="RTRIM74W">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="74X" package="RTRIM74X">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3224W" package="RTRIM3224W">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3339P" package="RTRIM3339P">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="64P" package="RTRIM64P">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="64W" package="RTRIM64W">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="64X" package="RTRIM64X">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="64Y" package="RTRIM64Y">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="64Z" package="RTRIM64Z">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3059Y" package="RTRIM3059Y">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="70Y" package="RTRIM70Y">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3374" package="RTRIM3374">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3299W" package="RTRIM3299W">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43P" package="RTRIM43P">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3006P" package="RTRIM3006P">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="T18" package="RTRIMT18">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="T93XA" package="RTRIMT93XA">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="T93XB" package="RTRIMT93XB">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="T93YA" package="RTRIMT93YA">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="T93YB" package="RTRIMT93YB">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3314G" package="RTRIM3314G">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
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
<package name="22-23-2021">
<description>.100" (2.54mm) Center Headers - 2 Pin</description>
<wire x1="-2.54" y1="3.175" x2="2.54" y2="3.175" width="0.254" layer="21"/>
<wire x1="2.54" y1="3.175" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-3.175" width="0.254" layer="21"/>
<wire x1="2.54" y1="-3.175" x2="-2.54" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-3.175" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="3.175" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1" shape="long" rot="R90"/>
<text x="-2.54" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
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
<deviceset name="22-23-2021" prefix="X">
<description>.100" (2.54mm) Center Header - 2 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2021">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2021" constant="no"/>
<attribute name="OC_FARNELL" value="1462926" constant="no"/>
<attribute name="OC_NEWARK" value="25C3832" constant="no"/>
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
<part name="D1" library="synkie" deviceset="DIODE_2CACA-" device="SOT23"/>
<part name="P+1" library="synkie" deviceset="+5V" device=""/>
<part name="P-1" library="synkie" deviceset="-5V" device=""/>
<part name="JP2" library="synkie" deviceset="PINHD-1X2" device=""/>
<part name="R1" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="GND1" library="synkie" deviceset="0V" device=""/>
<part name="U1" library="synkie" deviceset="MAX7450" device=""/>
<part name="GND2" library="synkie" deviceset="0V" device=""/>
<part name="C1" library="synkie" deviceset="C-EU" device="C0805" value="1u"/>
<part name="C2" library="synkie" deviceset="C-EU" device="C0805" value="1u"/>
<part name="C3" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND3" library="synkie" deviceset="0V" device=""/>
<part name="P-2" library="synkie" deviceset="-5V" device=""/>
<part name="C4" library="synkie" deviceset="C-EU" device="C0805" value="1u"/>
<part name="C5" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND4" library="synkie" deviceset="0V" device=""/>
<part name="P+2" library="synkie" deviceset="+5V" device=""/>
<part name="U2" library="synkie" deviceset="LM1881" device="SO8"/>
<part name="C6" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND5" library="synkie" deviceset="0V" device=""/>
<part name="P+3" library="synkie" deviceset="+5V" device=""/>
<part name="C7" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND6" library="synkie" deviceset="0V" device=""/>
<part name="C8" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="R2" library="synkie" deviceset="R-EU_" device="R0805" value="680k"/>
<part name="GND7" library="synkie" deviceset="0V" device=""/>
<part name="U3" library="synkie" deviceset="MAX4392ESA" device=""/>
<part name="P+4" library="synkie" deviceset="+5V" device=""/>
<part name="P-3" library="synkie" deviceset="-5V" device=""/>
<part name="C9" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="C10" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND8" library="synkie" deviceset="0V" device=""/>
<part name="R3" library="synkie" deviceset="R-EU_" device="R0805" value="120"/>
<part name="R4" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="SIFF_IN1" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="P+5" library="synkie" deviceset="+5V" device=""/>
<part name="X1" library="synkie" deviceset="CON-SYNCBUS" device=""/>
<part name="IC1" library="synkie" deviceset="LM833" device="D"/>
<part name="IC2" library="synkie" deviceset="LM833" device="D"/>
<part name="R5" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="R6" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="R7" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="R8" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="SIFF_OUT1" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="R9" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="R10" library="synkie" deviceset="R-EU_" device="R0805" value="10k"/>
<part name="U4" library="synkie" deviceset="MAX4392ESA" device=""/>
<part name="P+6" library="synkie" deviceset="+5V" device=""/>
<part name="P-4" library="synkie" deviceset="-5V" device=""/>
<part name="C12" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="C13" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND11" library="synkie" deviceset="0V" device=""/>
<part name="P+7" library="synkie" deviceset="+5V" device=""/>
<part name="P-5" library="synkie" deviceset="-5V" device=""/>
<part name="C14" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="C15" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND12" library="synkie" deviceset="0V" device=""/>
<part name="D3" library="synkie" deviceset="DIODE_2CACA-" device="SOT23"/>
<part name="P+8" library="synkie" deviceset="+5V" device=""/>
<part name="P-6" library="synkie" deviceset="-5V" device=""/>
<part name="GND13" library="synkie" deviceset="0V" device=""/>
<part name="IC3" library="synkie" deviceset="4053" device="D"/>
<part name="R12" library="synkie" deviceset="R-EU_" device="R0805" value="120"/>
<part name="GND17" library="synkie" deviceset="0V" device=""/>
<part name="R13" library="synkie" deviceset="R-EU_" device="R0805" value="200"/>
<part name="R14" library="synkie" deviceset="R-EU_" device="R0805" value="200"/>
<part name="GND18" library="synkie" deviceset="0V" device=""/>
<part name="VIDEO_IN1" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="VIDEO_OUT1" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="IC4" library="synkie" deviceset="4011" device="D"/>
<part name="D6" library="synkie" deviceset="DIODE_2CACA-" device="SOT23"/>
<part name="R15" library="synkie" deviceset="R-EU_" device="R0805" value="2k2"/>
<part name="C17" library="synkie" deviceset="C-EU" device="C0805" value="120p"/>
<part name="GND19" library="synkie" deviceset="0V" device=""/>
<part name="GND20" library="synkie" deviceset="0V" device=""/>
<part name="P+9" library="synkie" deviceset="+5V" device=""/>
<part name="P-7" library="synkie" deviceset="-5V" device=""/>
<part name="C18" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="C19" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND21" library="synkie" deviceset="0V" device=""/>
<part name="P+10" library="synkie" deviceset="+5V" device=""/>
<part name="C20" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND22" library="synkie" deviceset="0V" device=""/>
<part name="C22" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="C23" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND23" library="synkie" deviceset="0V" device=""/>
<part name="GND24" library="synkie" deviceset="0V" device=""/>
<part name="P+11" library="synkie" deviceset="+5V" device=""/>
<part name="P-9" library="synkie" deviceset="-5V" device=""/>
<part name="D7" library="synkie" deviceset="DIODE_2CACA-" device="SOT23"/>
<part name="P+12" library="synkie" deviceset="+5V" device=""/>
<part name="P-10" library="synkie" deviceset="-5V" device=""/>
<part name="JP1" library="synkie" deviceset="PINHD-1X2" device=""/>
<part name="R16" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="GND25" library="synkie" deviceset="0V" device=""/>
<part name="U5" library="synkie" deviceset="MAX7450" device=""/>
<part name="GND26" library="synkie" deviceset="0V" device=""/>
<part name="C24" library="synkie" deviceset="C-EU" device="C0805" value="1u"/>
<part name="C25" library="synkie" deviceset="C-EU" device="C0805" value="1u"/>
<part name="C26" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND27" library="synkie" deviceset="0V" device=""/>
<part name="P-11" library="synkie" deviceset="-5V" device=""/>
<part name="C27" library="synkie" deviceset="C-EU" device="C0805" value="1u"/>
<part name="C28" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND28" library="synkie" deviceset="0V" device=""/>
<part name="P+13" library="synkie" deviceset="+5V" device=""/>
<part name="U6" library="synkie" deviceset="MAX4392ESA" device=""/>
<part name="P+14" library="synkie" deviceset="+5V" device=""/>
<part name="P-12" library="synkie" deviceset="-5V" device=""/>
<part name="C29" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="C30" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND29" library="synkie" deviceset="0V" device=""/>
<part name="R17" library="synkie" deviceset="R-EU_" device="R0805" value="120"/>
<part name="R18" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="SIFF_IN2" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="P+15" library="synkie" deviceset="+5V" device=""/>
<part name="VIDEO_IN2" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="D9" library="synkie" deviceset="DIODE_2CACA-" device="SOT23"/>
<part name="P+16" library="synkie" deviceset="+5V" device=""/>
<part name="P-13" library="synkie" deviceset="-5V" device=""/>
<part name="JP3" library="synkie" deviceset="PINHD-1X2" device=""/>
<part name="R19" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="GND32" library="synkie" deviceset="0V" device=""/>
<part name="U7" library="synkie" deviceset="MAX7450" device=""/>
<part name="GND33" library="synkie" deviceset="0V" device=""/>
<part name="C32" library="synkie" deviceset="C-EU" device="C0805" value="1u"/>
<part name="C33" library="synkie" deviceset="C-EU" device="C0805" value="1u"/>
<part name="C34" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND34" library="synkie" deviceset="0V" device=""/>
<part name="P-14" library="synkie" deviceset="-5V" device=""/>
<part name="C35" library="synkie" deviceset="C-EU" device="C0805" value="1u"/>
<part name="C36" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND35" library="synkie" deviceset="0V" device=""/>
<part name="P+17" library="synkie" deviceset="+5V" device=""/>
<part name="U8" library="synkie" deviceset="MAX4392ESA" device=""/>
<part name="P+18" library="synkie" deviceset="+5V" device=""/>
<part name="P-15" library="synkie" deviceset="-5V" device=""/>
<part name="C37" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="C38" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND36" library="synkie" deviceset="0V" device=""/>
<part name="R20" library="synkie" deviceset="R-EU_" device="R0805" value="120"/>
<part name="R21" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="SIFF_IN3" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="P+19" library="synkie" deviceset="+5V" device=""/>
<part name="VIDEO_IN3" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="D11" library="synkie" deviceset="DIODE_2CACA-" device="SOT23"/>
<part name="P+20" library="synkie" deviceset="+5V" device=""/>
<part name="P-16" library="synkie" deviceset="-5V" device=""/>
<part name="JP4" library="synkie" deviceset="PINHD-1X2" device=""/>
<part name="R22" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="GND39" library="synkie" deviceset="0V" device=""/>
<part name="U9" library="synkie" deviceset="MAX7450" device=""/>
<part name="GND40" library="synkie" deviceset="0V" device=""/>
<part name="C40" library="synkie" deviceset="C-EU" device="C0805" value="1u"/>
<part name="C41" library="synkie" deviceset="C-EU" device="C0805" value="1u"/>
<part name="C42" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND41" library="synkie" deviceset="0V" device=""/>
<part name="P-17" library="synkie" deviceset="-5V" device=""/>
<part name="C43" library="synkie" deviceset="C-EU" device="C0805" value="1u"/>
<part name="C44" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND42" library="synkie" deviceset="0V" device=""/>
<part name="P+21" library="synkie" deviceset="+5V" device=""/>
<part name="U10" library="synkie" deviceset="MAX4392ESA" device=""/>
<part name="P+22" library="synkie" deviceset="+5V" device=""/>
<part name="P-18" library="synkie" deviceset="-5V" device=""/>
<part name="C45" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="C46" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND43" library="synkie" deviceset="0V" device=""/>
<part name="R23" library="synkie" deviceset="R-EU_" device="R0805" value="120"/>
<part name="R24" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="SIFF_IN4" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="P+23" library="synkie" deviceset="+5V" device=""/>
<part name="VIDEO_IN4" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="SIFF_OUT2" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="R25" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="R26" library="synkie" deviceset="R-EU_" device="R0805" value="10k"/>
<part name="U11" library="synkie" deviceset="MAX4392ESA" device=""/>
<part name="P+24" library="synkie" deviceset="+5V" device=""/>
<part name="P-19" library="synkie" deviceset="-5V" device=""/>
<part name="C48" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="C49" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND16" library="synkie" deviceset="0V" device=""/>
<part name="D13" library="synkie" deviceset="DIODE_2CACA-" device="SOT23"/>
<part name="P+25" library="synkie" deviceset="+5V" device=""/>
<part name="P-20" library="synkie" deviceset="-5V" device=""/>
<part name="GND46" library="synkie" deviceset="0V" device=""/>
<part name="R28" library="synkie" deviceset="R-EU_" device="R0805" value="120"/>
<part name="R29" library="synkie" deviceset="R-EU_" device="R0805" value="200"/>
<part name="R30" library="synkie" deviceset="R-EU_" device="R0805" value="200"/>
<part name="GND49" library="synkie" deviceset="0V" device=""/>
<part name="VIDEO_OUT2" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="SIFF_OUT3" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="R31" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="R32" library="synkie" deviceset="R-EU_" device="R0805" value="10k"/>
<part name="U12" library="synkie" deviceset="MAX4392ESA" device=""/>
<part name="P+26" library="synkie" deviceset="+5V" device=""/>
<part name="P-21" library="synkie" deviceset="-5V" device=""/>
<part name="C51" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="C52" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND50" library="synkie" deviceset="0V" device=""/>
<part name="D16" library="synkie" deviceset="DIODE_2CACA-" device="SOT23"/>
<part name="P+27" library="synkie" deviceset="+5V" device=""/>
<part name="P-22" library="synkie" deviceset="-5V" device=""/>
<part name="GND51" library="synkie" deviceset="0V" device=""/>
<part name="R34" library="synkie" deviceset="R-EU_" device="R0805" value="120"/>
<part name="R35" library="synkie" deviceset="R-EU_" device="R0805" value="200"/>
<part name="R36" library="synkie" deviceset="R-EU_" device="R0805" value="200"/>
<part name="GND54" library="synkie" deviceset="0V" device=""/>
<part name="VIDEO_OUT3" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="T1" library="synkie" deviceset="TRANS-PNP" device="SOT23-BEC"/>
<part name="R37" library="synkie" deviceset="R-EU_" device="R0805" value="300"/>
<part name="GND55" library="synkie" deviceset="0V" device=""/>
<part name="LED_VIN1" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="T2" library="synkie" deviceset="TRANS-PNP" device="SOT23-BEC"/>
<part name="R38" library="synkie" deviceset="R-EU_" device="R0805" value="300"/>
<part name="GND10" library="synkie" deviceset="0V" device=""/>
<part name="LED_VIN2" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="T3" library="synkie" deviceset="TRANS-PNP" device="SOT23-BEC"/>
<part name="R39" library="synkie" deviceset="R-EU_" device="R0805" value="300"/>
<part name="GND31" library="synkie" deviceset="0V" device=""/>
<part name="LED_VIN3" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="T4" library="synkie" deviceset="TRANS-PNP" device="SOT23-BEC"/>
<part name="R40" library="synkie" deviceset="R-EU_" device="R0805" value="300"/>
<part name="GND38" library="synkie" deviceset="0V" device=""/>
<part name="LED_VIN4" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="R41" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="R42" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="R43" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="X2" library="synkie" deviceset="CON-POWER" device=""/>
<part name="C54" library="synkie" deviceset="CPOL-EU" device="CT3528"/>
<part name="C55" library="synkie" deviceset="CPOL-EU" device="CT3528"/>
<part name="P+28" library="synkie" deviceset="+5V" device=""/>
<part name="P-23" library="synkie" deviceset="-5V" device=""/>
<part name="GND45" library="synkie" deviceset="0V" device=""/>
<part name="TO-PHASE-DELAY" library="con-molex" deviceset="22-23-2021" device=""/>
<part name="X4" library="con-molex" deviceset="22-23-2021" device=""/>
<part name="GND56" library="synkie" deviceset="0V" device=""/>
<part name="GND57" library="synkie" deviceset="0V" device=""/>
<part name="T5" library="synkie" deviceset="TRANS-NPN" device=""/>
<part name="P+29" library="synkie" deviceset="+5V" device=""/>
<part name="T6" library="synkie" deviceset="TRANS-NPN" device=""/>
<part name="P+30" library="synkie" deviceset="+5V" device=""/>
<part name="T7" library="synkie" deviceset="TRANS-NPN" device=""/>
<part name="P+31" library="synkie" deviceset="+5V" device=""/>
<part name="T8" library="synkie" deviceset="TRANS-NPN" device=""/>
<part name="P+32" library="synkie" deviceset="+5V" device=""/>
<part name="P+33" library="synkie" deviceset="+5V" device=""/>
<part name="T9" library="synkie" deviceset="TRANS-NPN" device=""/>
<part name="T10" library="synkie" deviceset="TRANS-PNP" device="SOT23-BEC"/>
<part name="P-8" library="synkie" deviceset="-5V" device=""/>
<part name="P+34" library="synkie" deviceset="+5V" device=""/>
<part name="T11" library="synkie" deviceset="TRANS-NPN" device=""/>
<part name="T12" library="synkie" deviceset="TRANS-PNP" device="SOT23-BEC"/>
<part name="P-24" library="synkie" deviceset="-5V" device=""/>
<part name="P+35" library="synkie" deviceset="+5V" device=""/>
<part name="T13" library="synkie" deviceset="TRANS-NPN" device=""/>
<part name="T14" library="synkie" deviceset="TRANS-PNP" device="SOT23-BEC"/>
<part name="P-25" library="synkie" deviceset="-5V" device=""/>
<part name="R_TBOT" library="synkie" deviceset="R-TRIMM" device="64Y" value="500"/>
<part name="R27" library="synkie" deviceset="R-EU_" device="R0805" value="1k2"/>
<part name="R33" library="synkie" deviceset="R-EU_" device="R0805" value="1k2"/>
<part name="P+36" library="synkie" deviceset="+5V" device=""/>
<part name="P-26" library="synkie" deviceset="-5V" device=""/>
<part name="R_TTOP" library="synkie" deviceset="R-TRIMM" device="64Y" value="500"/>
<part name="R11" library="synkie" deviceset="R-EU_" device="R0805" value="1k2"/>
<part name="R44" library="synkie" deviceset="R-EU_" device="R0805" value="1k2"/>
<part name="P+37" library="synkie" deviceset="+5V" device=""/>
<part name="P-27" library="synkie" deviceset="-5V" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="294.64" y="73.66" size="1.778" layer="91">AC COUPLE</text>
</plain>
<instances>
<instance part="D1" gate="-B1" x="-22.86" y="73.66" rot="R270"/>
<instance part="P+1" gate="1" x="-22.86" y="81.28"/>
<instance part="P-1" gate="1" x="-22.86" y="66.04"/>
<instance part="JP2" gate="G$1" x="-12.7" y="66.04"/>
<instance part="R1" gate="G$1" x="-15.24" y="55.88" rot="R90"/>
<instance part="GND1" gate="1" x="-15.24" y="48.26"/>
<instance part="U1" gate="G$1" x="17.78" y="66.04"/>
<instance part="GND2" gate="1" x="5.08" y="68.58" rot="R270"/>
<instance part="C1" gate="G$1" x="-2.54" y="73.66" rot="R90"/>
<instance part="C2" gate="G$1" x="-2.54" y="58.42" rot="R180"/>
<instance part="C3" gate="G$1" x="2.54" y="58.42" smashed="yes" rot="R180">
<attribute name="NAME" x="1.016" y="58.039" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="6.096" y="63.119" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="GND3" gate="1" x="-2.54" y="50.8"/>
<instance part="P-2" gate="1" x="7.62" y="50.8"/>
<instance part="C4" gate="G$1" x="-2.54" y="86.36" rot="R180"/>
<instance part="C5" gate="G$1" x="2.54" y="86.36" rot="R180"/>
<instance part="GND4" gate="1" x="-2.54" y="78.74"/>
<instance part="P+2" gate="1" x="-2.54" y="96.52"/>
<instance part="U2" gate="G$1" x="22.86" y="12.7"/>
<instance part="C6" gate="G$1" x="0" y="35.56"/>
<instance part="GND5" gate="1" x="2.54" y="7.62"/>
<instance part="P+3" gate="1" x="48.26" y="35.56"/>
<instance part="C7" gate="G$1" x="55.88" y="27.94" rot="R270"/>
<instance part="GND6" gate="1" x="58.42" y="25.4"/>
<instance part="C8" gate="G$1" x="58.42" y="12.7" rot="R180"/>
<instance part="R2" gate="G$1" x="50.8" y="12.7" rot="R90"/>
<instance part="GND7" gate="1" x="50.8" y="5.08"/>
<instance part="U3" gate="G$1" x="53.34" y="66.04"/>
<instance part="U3" gate="G$2" x="88.9" y="63.5"/>
<instance part="U3" gate="G$3" x="114.3" y="45.72"/>
<instance part="P+4" gate="1" x="114.3" y="58.42"/>
<instance part="P-3" gate="1" x="114.3" y="33.02"/>
<instance part="C9" gate="G$1" x="109.22" y="53.34" rot="R270"/>
<instance part="C10" gate="G$1" x="109.22" y="38.1" rot="R270"/>
<instance part="GND8" gate="1" x="104.14" y="33.02"/>
<instance part="R3" gate="G$1" x="71.12" y="66.04"/>
<instance part="R4" gate="G$1" x="106.68" y="63.5"/>
<instance part="SIFF_IN1" gate="1" x="114.3" y="63.5" rot="R180"/>
<instance part="P+5" gate="1" x="38.1" y="66.04"/>
<instance part="X1" gate="_ODD/EVEN" x="86.36" y="-33.02"/>
<instance part="X1" gate="_BPORCH" x="86.36" y="-35.56"/>
<instance part="X1" gate="_VSYNC" x="86.36" y="-38.1"/>
<instance part="X1" gate="_HSYNC" x="86.36" y="-40.64"/>
<instance part="IC1" gate="A" x="58.42" y="-33.02"/>
<instance part="IC1" gate="B" x="40.64" y="-45.72"/>
<instance part="IC2" gate="A" x="22.86" y="-58.42"/>
<instance part="IC2" gate="B" x="5.08" y="-71.12"/>
<instance part="R5" gate="G$1" x="76.2" y="-33.02" rot="R180"/>
<instance part="R6" gate="G$1" x="58.42" y="-45.72" rot="R180"/>
<instance part="R7" gate="G$1" x="40.64" y="-58.42" rot="R180"/>
<instance part="R8" gate="G$1" x="22.86" y="-71.12" rot="R180"/>
<instance part="SIFF_OUT1" gate="1" x="142.24" y="38.1"/>
<instance part="R9" gate="G$1" x="154.94" y="38.1"/>
<instance part="R10" gate="G$1" x="147.32" y="33.02" rot="R90"/>
<instance part="U4" gate="G$1" x="175.26" y="35.56"/>
<instance part="U4" gate="G$2" x="281.94" y="22.86"/>
<instance part="U4" gate="G$3" x="203.2" y="15.24"/>
<instance part="IC1" gate="P" x="99.06" y="-60.96"/>
<instance part="P+6" gate="1" x="99.06" y="-48.26"/>
<instance part="P-4" gate="1" x="99.06" y="-73.66"/>
<instance part="C12" gate="G$1" x="93.98" y="-53.34" rot="R270"/>
<instance part="C13" gate="G$1" x="93.98" y="-68.58" rot="R270"/>
<instance part="GND11" gate="1" x="86.36" y="-73.66"/>
<instance part="P+7" gate="1" x="203.2" y="27.94"/>
<instance part="P-5" gate="1" x="203.2" y="2.54"/>
<instance part="C14" gate="G$1" x="198.12" y="22.86" rot="R270"/>
<instance part="C15" gate="G$1" x="198.12" y="7.62" rot="R270"/>
<instance part="GND12" gate="1" x="193.04" y="2.54"/>
<instance part="D3" gate="-B1" x="165.1" y="38.1" rot="MR270"/>
<instance part="P+8" gate="1" x="165.1" y="45.72"/>
<instance part="P-6" gate="1" x="165.1" y="30.48"/>
<instance part="GND13" gate="1" x="147.32" y="25.4"/>
<instance part="IC3" gate="A" x="236.22" y="35.56"/>
<instance part="R12" gate="G$1" x="193.04" y="35.56"/>
<instance part="GND17" gate="1" x="215.9" y="20.32"/>
<instance part="R13" gate="G$1" x="266.7" y="15.24"/>
<instance part="R14" gate="G$1" x="284.48" y="15.24"/>
<instance part="GND18" gate="1" x="259.08" y="12.7"/>
<instance part="VIDEO_IN1" gate="1" x="-27.94" y="73.66"/>
<instance part="VIDEO_OUT1" gate="1" x="307.34" y="22.86" rot="MR0"/>
<instance part="IC4" gate="A" x="88.9" y="-17.78"/>
<instance part="IC4" gate="B" x="129.54" y="-17.78"/>
<instance part="IC4" gate="C" x="147.32" y="-15.24"/>
<instance part="IC4" gate="D" x="147.32" y="-30.48"/>
<instance part="D6" gate="-B1" x="114.3" y="-10.16" rot="R180"/>
<instance part="R15" gate="G$1" x="106.68" y="-17.78"/>
<instance part="C17" gate="G$1" x="114.3" y="-25.4" rot="R180"/>
<instance part="GND19" gate="1" x="137.16" y="-38.1"/>
<instance part="GND20" gate="1" x="114.3" y="-30.48"/>
<instance part="IC4" gate="P" x="175.26" y="-33.02"/>
<instance part="IC2" gate="P" x="114.3" y="-60.96"/>
<instance part="P+9" gate="1" x="114.3" y="-48.26"/>
<instance part="P-7" gate="1" x="114.3" y="-73.66"/>
<instance part="C18" gate="G$1" x="109.22" y="-53.34" rot="R270"/>
<instance part="C19" gate="G$1" x="109.22" y="-68.58" rot="R270"/>
<instance part="GND21" gate="1" x="104.14" y="-73.66"/>
<instance part="P+10" gate="1" x="175.26" y="-20.32"/>
<instance part="C20" gate="G$1" x="170.18" y="-25.4" rot="R270"/>
<instance part="GND22" gate="1" x="165.1" y="-45.72"/>
<instance part="IC3" gate="P" x="266.7" y="-17.78"/>
<instance part="C22" gate="G$1" x="259.08" y="-7.62" rot="R270"/>
<instance part="C23" gate="G$1" x="259.08" y="-27.94" rot="R270"/>
<instance part="GND23" gate="1" x="254" y="-33.02"/>
<instance part="GND24" gate="1" x="266.7" y="-33.02"/>
<instance part="P+11" gate="1" x="266.7" y="-2.54"/>
<instance part="P-9" gate="1" x="261.62" y="-38.1"/>
<instance part="D7" gate="-B1" x="-22.86" y="129.54" rot="R270"/>
<instance part="P+12" gate="1" x="-22.86" y="137.16"/>
<instance part="P-10" gate="1" x="-22.86" y="121.92"/>
<instance part="JP1" gate="G$1" x="-12.7" y="121.92"/>
<instance part="R16" gate="G$1" x="-15.24" y="111.76" rot="R90"/>
<instance part="GND25" gate="1" x="-15.24" y="104.14"/>
<instance part="U5" gate="G$1" x="17.78" y="121.92"/>
<instance part="GND26" gate="1" x="5.08" y="124.46" rot="R270"/>
<instance part="C24" gate="G$1" x="-2.54" y="129.54" rot="R90"/>
<instance part="C25" gate="G$1" x="-2.54" y="114.3" rot="R180"/>
<instance part="C26" gate="G$1" x="2.54" y="114.3" smashed="yes" rot="R180">
<attribute name="NAME" x="1.016" y="113.919" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="6.096" y="118.999" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="GND27" gate="1" x="-2.54" y="106.68"/>
<instance part="P-11" gate="1" x="7.62" y="106.68"/>
<instance part="C27" gate="G$1" x="-2.54" y="142.24" rot="R180"/>
<instance part="C28" gate="G$1" x="2.54" y="142.24" rot="R180"/>
<instance part="GND28" gate="1" x="-2.54" y="134.62"/>
<instance part="P+13" gate="1" x="-2.54" y="152.4"/>
<instance part="U6" gate="G$1" x="53.34" y="121.92"/>
<instance part="U6" gate="G$2" x="88.9" y="119.38"/>
<instance part="U6" gate="G$3" x="114.3" y="101.6"/>
<instance part="P+14" gate="1" x="114.3" y="114.3"/>
<instance part="P-12" gate="1" x="114.3" y="88.9"/>
<instance part="C29" gate="G$1" x="109.22" y="109.22" rot="R270"/>
<instance part="C30" gate="G$1" x="109.22" y="93.98" rot="R270"/>
<instance part="GND29" gate="1" x="104.14" y="88.9"/>
<instance part="R17" gate="G$1" x="71.12" y="121.92"/>
<instance part="R18" gate="G$1" x="106.68" y="119.38"/>
<instance part="SIFF_IN2" gate="1" x="114.3" y="119.38" rot="R180"/>
<instance part="P+15" gate="1" x="38.1" y="121.92"/>
<instance part="VIDEO_IN2" gate="1" x="-27.94" y="129.54"/>
<instance part="D9" gate="-B1" x="-22.86" y="185.42" rot="R270"/>
<instance part="P+16" gate="1" x="-22.86" y="193.04"/>
<instance part="P-13" gate="1" x="-22.86" y="177.8"/>
<instance part="JP3" gate="G$1" x="-12.7" y="177.8"/>
<instance part="R19" gate="G$1" x="-15.24" y="167.64" rot="R90"/>
<instance part="GND32" gate="1" x="-15.24" y="160.02"/>
<instance part="U7" gate="G$1" x="17.78" y="177.8"/>
<instance part="GND33" gate="1" x="5.08" y="180.34" rot="R270"/>
<instance part="C32" gate="G$1" x="-2.54" y="185.42" rot="R90"/>
<instance part="C33" gate="G$1" x="-2.54" y="170.18" rot="R180"/>
<instance part="C34" gate="G$1" x="2.54" y="170.18" smashed="yes" rot="R180">
<attribute name="NAME" x="1.016" y="169.799" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="6.096" y="174.879" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="GND34" gate="1" x="-2.54" y="162.56"/>
<instance part="P-14" gate="1" x="7.62" y="162.56"/>
<instance part="C35" gate="G$1" x="-2.54" y="198.12" rot="R180"/>
<instance part="C36" gate="G$1" x="2.54" y="198.12" rot="R180"/>
<instance part="GND35" gate="1" x="-2.54" y="190.5"/>
<instance part="P+17" gate="1" x="-2.54" y="208.28"/>
<instance part="U8" gate="G$1" x="53.34" y="177.8"/>
<instance part="U8" gate="G$2" x="88.9" y="175.26"/>
<instance part="U8" gate="G$3" x="114.3" y="157.48"/>
<instance part="P+18" gate="1" x="114.3" y="170.18"/>
<instance part="P-15" gate="1" x="114.3" y="144.78"/>
<instance part="C37" gate="G$1" x="109.22" y="165.1" rot="R270"/>
<instance part="C38" gate="G$1" x="109.22" y="149.86" rot="R270"/>
<instance part="GND36" gate="1" x="104.14" y="144.78"/>
<instance part="R20" gate="G$1" x="71.12" y="177.8"/>
<instance part="R21" gate="G$1" x="106.68" y="175.26"/>
<instance part="SIFF_IN3" gate="1" x="114.3" y="175.26" rot="R180"/>
<instance part="P+19" gate="1" x="38.1" y="177.8"/>
<instance part="VIDEO_IN3" gate="1" x="-27.94" y="185.42"/>
<instance part="D11" gate="-B1" x="-22.86" y="238.76" rot="R270"/>
<instance part="P+20" gate="1" x="-22.86" y="246.38"/>
<instance part="P-16" gate="1" x="-22.86" y="231.14"/>
<instance part="JP4" gate="G$1" x="-12.7" y="231.14"/>
<instance part="R22" gate="G$1" x="-15.24" y="220.98" rot="R90"/>
<instance part="GND39" gate="1" x="-15.24" y="213.36"/>
<instance part="U9" gate="G$1" x="17.78" y="231.14"/>
<instance part="GND40" gate="1" x="5.08" y="233.68" rot="R270"/>
<instance part="C40" gate="G$1" x="-2.54" y="238.76" rot="R90"/>
<instance part="C41" gate="G$1" x="-2.54" y="223.52" rot="R180"/>
<instance part="C42" gate="G$1" x="2.54" y="223.52" smashed="yes" rot="R180">
<attribute name="NAME" x="1.016" y="223.139" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="6.096" y="228.219" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="GND41" gate="1" x="-2.54" y="215.9"/>
<instance part="P-17" gate="1" x="7.62" y="215.9"/>
<instance part="C43" gate="G$1" x="-2.54" y="251.46" rot="R180"/>
<instance part="C44" gate="G$1" x="2.54" y="251.46" rot="R180"/>
<instance part="GND42" gate="1" x="-2.54" y="243.84"/>
<instance part="P+21" gate="1" x="-2.54" y="261.62"/>
<instance part="U10" gate="G$1" x="53.34" y="231.14"/>
<instance part="U10" gate="G$2" x="88.9" y="228.6"/>
<instance part="U10" gate="G$3" x="114.3" y="210.82"/>
<instance part="P+22" gate="1" x="114.3" y="223.52"/>
<instance part="P-18" gate="1" x="114.3" y="198.12"/>
<instance part="C45" gate="G$1" x="109.22" y="218.44" rot="R270"/>
<instance part="C46" gate="G$1" x="109.22" y="203.2" rot="R270"/>
<instance part="GND43" gate="1" x="104.14" y="198.12"/>
<instance part="R23" gate="G$1" x="71.12" y="231.14" rot="R180"/>
<instance part="R24" gate="G$1" x="106.68" y="228.6"/>
<instance part="SIFF_IN4" gate="1" x="114.3" y="228.6" rot="R180"/>
<instance part="P+23" gate="1" x="38.1" y="231.14"/>
<instance part="VIDEO_IN4" gate="1" x="-27.94" y="238.76"/>
<instance part="SIFF_OUT2" gate="1" x="142.24" y="106.68"/>
<instance part="R25" gate="G$1" x="154.94" y="106.68"/>
<instance part="R26" gate="G$1" x="147.32" y="101.6" rot="R90"/>
<instance part="U11" gate="G$1" x="175.26" y="104.14"/>
<instance part="U11" gate="G$2" x="281.94" y="40.64"/>
<instance part="U11" gate="G$3" x="203.2" y="86.36"/>
<instance part="P+24" gate="1" x="203.2" y="99.06"/>
<instance part="P-19" gate="1" x="203.2" y="73.66"/>
<instance part="C48" gate="G$1" x="198.12" y="93.98" rot="R270"/>
<instance part="C49" gate="G$1" x="198.12" y="78.74" rot="R270"/>
<instance part="GND16" gate="1" x="193.04" y="73.66"/>
<instance part="D13" gate="-B1" x="165.1" y="106.68" rot="MR270"/>
<instance part="P+25" gate="1" x="165.1" y="114.3"/>
<instance part="P-20" gate="1" x="165.1" y="99.06"/>
<instance part="GND46" gate="1" x="147.32" y="93.98"/>
<instance part="R28" gate="G$1" x="193.04" y="104.14"/>
<instance part="R29" gate="G$1" x="266.7" y="33.02"/>
<instance part="R30" gate="G$1" x="284.48" y="33.02"/>
<instance part="GND49" gate="1" x="259.08" y="30.48"/>
<instance part="VIDEO_OUT2" gate="1" x="307.34" y="40.64" rot="MR0"/>
<instance part="SIFF_OUT3" gate="1" x="142.24" y="162.56"/>
<instance part="R31" gate="G$1" x="154.94" y="162.56"/>
<instance part="R32" gate="G$1" x="147.32" y="157.48" rot="R90"/>
<instance part="U12" gate="G$1" x="175.26" y="160.02"/>
<instance part="U12" gate="G$2" x="281.94" y="60.96"/>
<instance part="U12" gate="G$3" x="203.2" y="144.78"/>
<instance part="P+26" gate="1" x="203.2" y="157.48"/>
<instance part="P-21" gate="1" x="203.2" y="132.08"/>
<instance part="C51" gate="G$1" x="198.12" y="152.4" rot="R270"/>
<instance part="C52" gate="G$1" x="198.12" y="137.16" rot="R270"/>
<instance part="GND50" gate="1" x="193.04" y="132.08"/>
<instance part="D16" gate="-B1" x="165.1" y="162.56" rot="MR270"/>
<instance part="P+27" gate="1" x="165.1" y="170.18"/>
<instance part="P-22" gate="1" x="165.1" y="154.94"/>
<instance part="GND51" gate="1" x="147.32" y="149.86"/>
<instance part="R34" gate="G$1" x="193.04" y="160.02"/>
<instance part="R35" gate="G$1" x="266.7" y="53.34"/>
<instance part="R36" gate="G$1" x="284.48" y="53.34"/>
<instance part="GND54" gate="1" x="259.08" y="50.8"/>
<instance part="VIDEO_OUT3" gate="1" x="307.34" y="60.96" rot="MR0"/>
<instance part="T1" gate="G$1" x="38.1" y="78.74"/>
<instance part="R37" gate="G$1" x="48.26" y="83.82"/>
<instance part="GND55" gate="1" x="40.64" y="71.12"/>
<instance part="LED_VIN1" gate="1" x="55.88" y="83.82" rot="R180"/>
<instance part="T2" gate="G$1" x="38.1" y="134.62"/>
<instance part="R38" gate="G$1" x="48.26" y="139.7"/>
<instance part="GND10" gate="1" x="40.64" y="127"/>
<instance part="LED_VIN2" gate="1" x="55.88" y="139.7" rot="R180"/>
<instance part="T3" gate="G$1" x="38.1" y="190.5"/>
<instance part="R39" gate="G$1" x="48.26" y="195.58"/>
<instance part="GND31" gate="1" x="40.64" y="182.88"/>
<instance part="LED_VIN3" gate="1" x="55.88" y="195.58" rot="R180"/>
<instance part="T4" gate="G$1" x="38.1" y="243.84"/>
<instance part="R40" gate="G$1" x="48.26" y="248.92"/>
<instance part="GND38" gate="1" x="40.64" y="236.22"/>
<instance part="LED_VIN4" gate="1" x="55.88" y="248.92" rot="R180"/>
<instance part="R41" gate="G$1" x="299.72" y="22.86"/>
<instance part="R42" gate="G$1" x="299.72" y="40.64"/>
<instance part="R43" gate="G$1" x="299.72" y="60.96"/>
<instance part="X2" gate="_-5V" x="208.28" y="-38.1" rot="MR0"/>
<instance part="X2" gate="_GND" x="208.28" y="-35.56" rot="MR0"/>
<instance part="X2" gate="_+5V" x="208.28" y="-33.02" rot="MR0"/>
<instance part="C54" gate="G$1" x="218.44" y="-38.1" rot="MR90"/>
<instance part="C55" gate="G$1" x="215.9" y="-33.02" rot="MR270"/>
<instance part="P+28" gate="1" x="210.82" y="-27.94"/>
<instance part="P-23" gate="1" x="210.82" y="-43.18"/>
<instance part="GND45" gate="1" x="223.52" y="-43.18"/>
<instance part="TO-PHASE-DELAY" gate="-1" x="68.58" y="10.16"/>
<instance part="TO-PHASE-DELAY" gate="-2" x="68.58" y="15.24"/>
<instance part="X4" gate="-1" x="213.36" y="10.16"/>
<instance part="X4" gate="-2" x="213.36" y="15.24"/>
<instance part="GND56" gate="1" x="66.04" y="7.62"/>
<instance part="GND57" gate="1" x="210.82" y="7.62"/>
<instance part="T5" gate="G$1" x="81.28" y="238.76" rot="MR0"/>
<instance part="P+29" gate="1" x="78.74" y="246.38"/>
<instance part="T6" gate="G$1" x="81.28" y="185.42" rot="MR0"/>
<instance part="P+30" gate="1" x="78.74" y="193.04"/>
<instance part="T7" gate="G$1" x="81.28" y="129.54" rot="MR0"/>
<instance part="P+31" gate="1" x="78.74" y="137.16"/>
<instance part="T8" gate="G$1" x="81.28" y="73.66" rot="MR0"/>
<instance part="P+32" gate="1" x="78.74" y="81.28"/>
<instance part="P+33" gate="1" x="187.96" y="182.88"/>
<instance part="T9" gate="G$1" x="193.04" y="175.26" rot="R90"/>
<instance part="T10" gate="G$1" x="208.28" y="180.34" rot="MR270"/>
<instance part="P-8" gate="1" x="213.36" y="172.72"/>
<instance part="P+34" gate="1" x="187.96" y="127"/>
<instance part="T11" gate="G$1" x="193.04" y="119.38" rot="R90"/>
<instance part="T12" gate="G$1" x="208.28" y="124.46" rot="MR270"/>
<instance part="P-24" gate="1" x="213.36" y="116.84"/>
<instance part="P+35" gate="1" x="187.96" y="63.5"/>
<instance part="T13" gate="G$1" x="193.04" y="55.88" rot="R90"/>
<instance part="T14" gate="G$1" x="208.28" y="60.96" rot="MR270"/>
<instance part="P-25" gate="1" x="213.36" y="53.34"/>
<instance part="R_TBOT" gate="G$1" x="254" y="193.04" rot="MR0"/>
<instance part="R27" gate="G$1" x="254" y="203.2" rot="MR270"/>
<instance part="R33" gate="G$1" x="254" y="182.88" rot="MR270"/>
<instance part="P+36" gate="1" x="254" y="210.82"/>
<instance part="P-26" gate="1" x="254" y="175.26"/>
<instance part="R_TTOP" gate="G$1" x="254" y="144.78" rot="MR0"/>
<instance part="R11" gate="G$1" x="254" y="154.94" rot="MR270"/>
<instance part="R44" gate="G$1" x="254" y="134.62" rot="MR270"/>
<instance part="P+37" gate="1" x="254" y="162.56"/>
<instance part="P-27" gate="1" x="254" y="127"/>
</instances>
<busses>
</busses>
<nets>
<net name="+5V" class="0">
<segment>
<pinref part="D1" gate="-B1" pin="C"/>
<pinref part="P+1" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="2"/>
<wire x1="7.62" y1="91.44" x2="2.54" y2="91.44" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="91.44" x2="2.54" y2="91.44" width="0.1524" layer="91"/>
<junction x="2.54" y="91.44"/>
<pinref part="P+2" gate="1" pin="+5V"/>
<wire x1="-2.54" y1="93.98" x2="-2.54" y2="91.44" width="0.1524" layer="91"/>
<junction x="-2.54" y="91.44"/>
<pinref part="U1" gate="G$1" pin="VCC"/>
<wire x1="7.62" y1="91.44" x2="7.62" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="VCC"/>
<pinref part="C7" gate="G$1" pin="2"/>
<wire x1="43.18" y1="27.94" x2="48.26" y2="27.94" width="0.1524" layer="91"/>
<pinref part="P+3" gate="1" pin="+5V"/>
<wire x1="48.26" y1="27.94" x2="50.8" y2="27.94" width="0.1524" layer="91"/>
<wire x1="48.26" y1="33.02" x2="48.26" y2="27.94" width="0.1524" layer="91"/>
<junction x="48.26" y="27.94"/>
</segment>
<segment>
<pinref part="U3" gate="G$3" pin="+5V"/>
<pinref part="P+4" gate="1" pin="+5V"/>
<wire x1="114.3" y1="53.34" x2="114.3" y2="55.88" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="1"/>
<wire x1="111.76" y1="53.34" x2="114.3" y2="53.34" width="0.1524" layer="91"/>
<junction x="114.3" y="53.34"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="AGCD"/>
<pinref part="P+5" gate="1" pin="+5V"/>
<wire x1="35.56" y1="63.5" x2="38.1" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+6" gate="1" pin="+5V"/>
<wire x1="99.06" y1="-53.34" x2="99.06" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="C12" gate="G$1" pin="1"/>
<wire x1="96.52" y1="-53.34" x2="99.06" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="IC1" gate="P" pin="V+"/>
<junction x="99.06" y="-53.34"/>
</segment>
<segment>
<pinref part="P+7" gate="1" pin="+5V"/>
<wire x1="203.2" y1="22.86" x2="203.2" y2="25.4" width="0.1524" layer="91"/>
<pinref part="C14" gate="G$1" pin="1"/>
<wire x1="200.66" y1="22.86" x2="203.2" y2="22.86" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$3" pin="+5V"/>
<junction x="203.2" y="22.86"/>
</segment>
<segment>
<pinref part="P+9" gate="1" pin="+5V"/>
<wire x1="114.3" y1="-53.34" x2="114.3" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="C18" gate="G$1" pin="1"/>
<wire x1="111.76" y1="-53.34" x2="114.3" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="IC2" gate="P" pin="V+"/>
<junction x="114.3" y="-53.34"/>
</segment>
<segment>
<pinref part="C20" gate="G$1" pin="1"/>
<wire x1="172.72" y1="-25.4" x2="175.26" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="P+10" gate="1" pin="+5V"/>
<wire x1="175.26" y1="-22.86" x2="175.26" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="IC4" gate="P" pin="VDD"/>
<junction x="175.26" y="-25.4"/>
</segment>
<segment>
<pinref part="C22" gate="G$1" pin="1"/>
<pinref part="IC3" gate="P" pin="VCC"/>
<wire x1="261.62" y1="-7.62" x2="266.7" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="266.7" y1="-7.62" x2="266.7" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="P+11" gate="1" pin="+5V"/>
<wire x1="266.7" y1="-5.08" x2="266.7" y2="-7.62" width="0.1524" layer="91"/>
<junction x="266.7" y="-7.62"/>
</segment>
<segment>
<pinref part="D7" gate="-B1" pin="C"/>
<pinref part="P+12" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="C28" gate="G$1" pin="2"/>
<wire x1="7.62" y1="147.32" x2="2.54" y2="147.32" width="0.1524" layer="91"/>
<pinref part="C27" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="147.32" x2="2.54" y2="147.32" width="0.1524" layer="91"/>
<junction x="2.54" y="147.32"/>
<pinref part="P+13" gate="1" pin="+5V"/>
<wire x1="-2.54" y1="149.86" x2="-2.54" y2="147.32" width="0.1524" layer="91"/>
<junction x="-2.54" y="147.32"/>
<pinref part="U5" gate="G$1" pin="VCC"/>
<wire x1="7.62" y1="147.32" x2="7.62" y2="134.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U6" gate="G$3" pin="+5V"/>
<pinref part="P+14" gate="1" pin="+5V"/>
<wire x1="114.3" y1="109.22" x2="114.3" y2="111.76" width="0.1524" layer="91"/>
<pinref part="C29" gate="G$1" pin="1"/>
<wire x1="111.76" y1="109.22" x2="114.3" y2="109.22" width="0.1524" layer="91"/>
<junction x="114.3" y="109.22"/>
</segment>
<segment>
<pinref part="U5" gate="G$1" pin="AGCD"/>
<pinref part="P+15" gate="1" pin="+5V"/>
<wire x1="35.56" y1="119.38" x2="38.1" y2="119.38" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D9" gate="-B1" pin="C"/>
<pinref part="P+16" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="C36" gate="G$1" pin="2"/>
<wire x1="7.62" y1="203.2" x2="2.54" y2="203.2" width="0.1524" layer="91"/>
<pinref part="C35" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="203.2" x2="2.54" y2="203.2" width="0.1524" layer="91"/>
<junction x="2.54" y="203.2"/>
<pinref part="P+17" gate="1" pin="+5V"/>
<wire x1="-2.54" y1="205.74" x2="-2.54" y2="203.2" width="0.1524" layer="91"/>
<junction x="-2.54" y="203.2"/>
<pinref part="U7" gate="G$1" pin="VCC"/>
<wire x1="7.62" y1="203.2" x2="7.62" y2="190.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U8" gate="G$3" pin="+5V"/>
<pinref part="P+18" gate="1" pin="+5V"/>
<wire x1="114.3" y1="165.1" x2="114.3" y2="167.64" width="0.1524" layer="91"/>
<pinref part="C37" gate="G$1" pin="1"/>
<wire x1="111.76" y1="165.1" x2="114.3" y2="165.1" width="0.1524" layer="91"/>
<junction x="114.3" y="165.1"/>
</segment>
<segment>
<pinref part="U7" gate="G$1" pin="AGCD"/>
<pinref part="P+19" gate="1" pin="+5V"/>
<wire x1="35.56" y1="175.26" x2="38.1" y2="175.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D11" gate="-B1" pin="C"/>
<pinref part="P+20" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="C44" gate="G$1" pin="2"/>
<wire x1="7.62" y1="256.54" x2="2.54" y2="256.54" width="0.1524" layer="91"/>
<pinref part="C43" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="256.54" x2="2.54" y2="256.54" width="0.1524" layer="91"/>
<junction x="2.54" y="256.54"/>
<pinref part="P+21" gate="1" pin="+5V"/>
<wire x1="-2.54" y1="259.08" x2="-2.54" y2="256.54" width="0.1524" layer="91"/>
<junction x="-2.54" y="256.54"/>
<pinref part="U9" gate="G$1" pin="VCC"/>
<wire x1="7.62" y1="256.54" x2="7.62" y2="243.84" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U10" gate="G$3" pin="+5V"/>
<pinref part="P+22" gate="1" pin="+5V"/>
<wire x1="114.3" y1="218.44" x2="114.3" y2="220.98" width="0.1524" layer="91"/>
<pinref part="C45" gate="G$1" pin="1"/>
<wire x1="111.76" y1="218.44" x2="114.3" y2="218.44" width="0.1524" layer="91"/>
<junction x="114.3" y="218.44"/>
</segment>
<segment>
<pinref part="U9" gate="G$1" pin="AGCD"/>
<pinref part="P+23" gate="1" pin="+5V"/>
<wire x1="35.56" y1="228.6" x2="38.1" y2="228.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+24" gate="1" pin="+5V"/>
<wire x1="203.2" y1="93.98" x2="203.2" y2="96.52" width="0.1524" layer="91"/>
<pinref part="C48" gate="G$1" pin="1"/>
<wire x1="200.66" y1="93.98" x2="203.2" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U11" gate="G$3" pin="+5V"/>
<junction x="203.2" y="93.98"/>
</segment>
<segment>
<pinref part="P+26" gate="1" pin="+5V"/>
<wire x1="203.2" y1="152.4" x2="203.2" y2="154.94" width="0.1524" layer="91"/>
<pinref part="C51" gate="G$1" pin="1"/>
<wire x1="200.66" y1="152.4" x2="203.2" y2="152.4" width="0.1524" layer="91"/>
<pinref part="U12" gate="G$3" pin="+5V"/>
<junction x="203.2" y="152.4"/>
</segment>
<segment>
<pinref part="P+28" gate="1" pin="+5V"/>
<pinref part="C55" gate="G$1" pin="+"/>
<wire x1="210.82" y1="-30.48" x2="210.82" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="210.82" y1="-33.02" x2="213.36" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="X2" gate="_+5V" pin="S"/>
<junction x="210.82" y="-33.02"/>
</segment>
<segment>
<pinref part="D3" gate="-B1" pin="C"/>
<pinref part="P+8" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="D13" gate="-B1" pin="C"/>
<pinref part="P+25" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="D16" gate="-B1" pin="C"/>
<pinref part="P+27" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="T5" gate="G$1" pin="C"/>
<pinref part="P+29" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="T6" gate="G$1" pin="C"/>
<pinref part="P+30" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="T7" gate="G$1" pin="C"/>
<pinref part="P+31" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="T8" gate="G$1" pin="C"/>
<pinref part="P+32" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="P+33" gate="1" pin="+5V"/>
<pinref part="T9" gate="G$1" pin="C"/>
<wire x1="187.96" y1="177.8" x2="187.96" y2="180.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+34" gate="1" pin="+5V"/>
<pinref part="T11" gate="G$1" pin="C"/>
<wire x1="187.96" y1="121.92" x2="187.96" y2="124.46" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+35" gate="1" pin="+5V"/>
<pinref part="T13" gate="G$1" pin="C"/>
<wire x1="187.96" y1="58.42" x2="187.96" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R27" gate="G$1" pin="1"/>
<pinref part="P+36" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="R11" gate="G$1" pin="1"/>
<pinref part="P+37" gate="1" pin="+5V"/>
</segment>
</net>
<net name="-5V" class="0">
<segment>
<pinref part="D1" gate="-B1" pin="A"/>
<pinref part="P-1" gate="1" pin="-5V"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VSS"/>
<pinref part="C3" gate="G$1" pin="2"/>
<wire x1="7.62" y1="63.5" x2="2.54" y2="63.5" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="63.5" x2="2.54" y2="63.5" width="0.1524" layer="91"/>
<junction x="2.54" y="63.5"/>
<pinref part="U1" gate="G$1" pin="VSS@1"/>
<wire x1="7.62" y1="55.88" x2="7.62" y2="63.5" width="0.1524" layer="91"/>
<junction x="7.62" y="63.5"/>
<pinref part="P-2" gate="1" pin="-5V"/>
<wire x1="7.62" y1="55.88" x2="7.62" y2="53.34" width="0.1524" layer="91"/>
<junction x="7.62" y="55.88"/>
</segment>
<segment>
<pinref part="U3" gate="G$3" pin="-5V"/>
<pinref part="P-3" gate="1" pin="-5V"/>
<wire x1="114.3" y1="38.1" x2="114.3" y2="35.56" width="0.1524" layer="91"/>
<pinref part="C10" gate="G$1" pin="1"/>
<wire x1="111.76" y1="38.1" x2="114.3" y2="38.1" width="0.1524" layer="91"/>
<junction x="114.3" y="38.1"/>
</segment>
<segment>
<pinref part="P-4" gate="1" pin="-5V"/>
<wire x1="99.06" y1="-68.58" x2="99.06" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="C13" gate="G$1" pin="1"/>
<wire x1="96.52" y1="-68.58" x2="99.06" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="IC1" gate="P" pin="V-"/>
<junction x="99.06" y="-68.58"/>
</segment>
<segment>
<pinref part="P-5" gate="1" pin="-5V"/>
<wire x1="203.2" y1="7.62" x2="203.2" y2="5.08" width="0.1524" layer="91"/>
<pinref part="C15" gate="G$1" pin="1"/>
<wire x1="200.66" y1="7.62" x2="203.2" y2="7.62" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$3" pin="-5V"/>
<junction x="203.2" y="7.62"/>
</segment>
<segment>
<pinref part="C19" gate="G$1" pin="1"/>
<wire x1="111.76" y1="-68.58" x2="114.3" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="P-7" gate="1" pin="-5V"/>
<wire x1="114.3" y1="-71.12" x2="114.3" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="IC2" gate="P" pin="V-"/>
<junction x="114.3" y="-68.58"/>
</segment>
<segment>
<pinref part="IC3" gate="P" pin="VEE"/>
<wire x1="261.62" y1="-25.4" x2="261.62" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="C23" gate="G$1" pin="1"/>
<pinref part="P-9" gate="1" pin="-5V"/>
<wire x1="261.62" y1="-35.56" x2="261.62" y2="-27.94" width="0.1524" layer="91"/>
<junction x="261.62" y="-27.94"/>
</segment>
<segment>
<pinref part="D7" gate="-B1" pin="A"/>
<pinref part="P-10" gate="1" pin="-5V"/>
</segment>
<segment>
<pinref part="U5" gate="G$1" pin="VSS"/>
<pinref part="C26" gate="G$1" pin="2"/>
<wire x1="7.62" y1="119.38" x2="2.54" y2="119.38" width="0.1524" layer="91"/>
<pinref part="C25" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="119.38" x2="2.54" y2="119.38" width="0.1524" layer="91"/>
<junction x="2.54" y="119.38"/>
<pinref part="U5" gate="G$1" pin="VSS@1"/>
<wire x1="7.62" y1="111.76" x2="7.62" y2="119.38" width="0.1524" layer="91"/>
<junction x="7.62" y="119.38"/>
<pinref part="P-11" gate="1" pin="-5V"/>
<wire x1="7.62" y1="111.76" x2="7.62" y2="109.22" width="0.1524" layer="91"/>
<junction x="7.62" y="111.76"/>
</segment>
<segment>
<pinref part="U6" gate="G$3" pin="-5V"/>
<pinref part="P-12" gate="1" pin="-5V"/>
<wire x1="114.3" y1="93.98" x2="114.3" y2="91.44" width="0.1524" layer="91"/>
<pinref part="C30" gate="G$1" pin="1"/>
<wire x1="111.76" y1="93.98" x2="114.3" y2="93.98" width="0.1524" layer="91"/>
<junction x="114.3" y="93.98"/>
</segment>
<segment>
<pinref part="D9" gate="-B1" pin="A"/>
<pinref part="P-13" gate="1" pin="-5V"/>
</segment>
<segment>
<pinref part="U7" gate="G$1" pin="VSS"/>
<pinref part="C34" gate="G$1" pin="2"/>
<wire x1="7.62" y1="175.26" x2="2.54" y2="175.26" width="0.1524" layer="91"/>
<pinref part="C33" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="175.26" x2="2.54" y2="175.26" width="0.1524" layer="91"/>
<junction x="2.54" y="175.26"/>
<pinref part="U7" gate="G$1" pin="VSS@1"/>
<wire x1="7.62" y1="167.64" x2="7.62" y2="175.26" width="0.1524" layer="91"/>
<junction x="7.62" y="175.26"/>
<pinref part="P-14" gate="1" pin="-5V"/>
<wire x1="7.62" y1="167.64" x2="7.62" y2="165.1" width="0.1524" layer="91"/>
<junction x="7.62" y="167.64"/>
</segment>
<segment>
<pinref part="U8" gate="G$3" pin="-5V"/>
<pinref part="P-15" gate="1" pin="-5V"/>
<wire x1="114.3" y1="149.86" x2="114.3" y2="147.32" width="0.1524" layer="91"/>
<pinref part="C38" gate="G$1" pin="1"/>
<wire x1="111.76" y1="149.86" x2="114.3" y2="149.86" width="0.1524" layer="91"/>
<junction x="114.3" y="149.86"/>
</segment>
<segment>
<pinref part="D11" gate="-B1" pin="A"/>
<pinref part="P-16" gate="1" pin="-5V"/>
</segment>
<segment>
<pinref part="U9" gate="G$1" pin="VSS"/>
<pinref part="C42" gate="G$1" pin="2"/>
<wire x1="7.62" y1="228.6" x2="2.54" y2="228.6" width="0.1524" layer="91"/>
<pinref part="C41" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="228.6" x2="2.54" y2="228.6" width="0.1524" layer="91"/>
<junction x="2.54" y="228.6"/>
<pinref part="U9" gate="G$1" pin="VSS@1"/>
<wire x1="7.62" y1="220.98" x2="7.62" y2="228.6" width="0.1524" layer="91"/>
<junction x="7.62" y="228.6"/>
<pinref part="P-17" gate="1" pin="-5V"/>
<wire x1="7.62" y1="220.98" x2="7.62" y2="218.44" width="0.1524" layer="91"/>
<junction x="7.62" y="220.98"/>
</segment>
<segment>
<pinref part="U10" gate="G$3" pin="-5V"/>
<pinref part="P-18" gate="1" pin="-5V"/>
<wire x1="114.3" y1="203.2" x2="114.3" y2="200.66" width="0.1524" layer="91"/>
<pinref part="C46" gate="G$1" pin="1"/>
<wire x1="111.76" y1="203.2" x2="114.3" y2="203.2" width="0.1524" layer="91"/>
<junction x="114.3" y="203.2"/>
</segment>
<segment>
<pinref part="P-19" gate="1" pin="-5V"/>
<wire x1="203.2" y1="78.74" x2="203.2" y2="76.2" width="0.1524" layer="91"/>
<pinref part="C49" gate="G$1" pin="1"/>
<wire x1="200.66" y1="78.74" x2="203.2" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U11" gate="G$3" pin="-5V"/>
<junction x="203.2" y="78.74"/>
</segment>
<segment>
<pinref part="P-21" gate="1" pin="-5V"/>
<wire x1="203.2" y1="137.16" x2="203.2" y2="134.62" width="0.1524" layer="91"/>
<pinref part="C52" gate="G$1" pin="1"/>
<wire x1="200.66" y1="137.16" x2="203.2" y2="137.16" width="0.1524" layer="91"/>
<pinref part="U12" gate="G$3" pin="-5V"/>
<junction x="203.2" y="137.16"/>
</segment>
<segment>
<pinref part="P-23" gate="1" pin="-5V"/>
<pinref part="X2" gate="_-5V" pin="S"/>
<wire x1="210.82" y1="-40.64" x2="210.82" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="C54" gate="G$1" pin="-"/>
<wire x1="213.36" y1="-38.1" x2="210.82" y2="-38.1" width="0.1524" layer="91"/>
<junction x="210.82" y="-38.1"/>
</segment>
<segment>
<pinref part="D3" gate="-B1" pin="A"/>
<pinref part="P-6" gate="1" pin="-5V"/>
</segment>
<segment>
<pinref part="D13" gate="-B1" pin="A"/>
<pinref part="P-20" gate="1" pin="-5V"/>
</segment>
<segment>
<pinref part="D16" gate="-B1" pin="A"/>
<pinref part="P-22" gate="1" pin="-5V"/>
</segment>
<segment>
<pinref part="T10" gate="G$1" pin="C"/>
<pinref part="P-8" gate="1" pin="-5V"/>
<wire x1="213.36" y1="177.8" x2="213.36" y2="175.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T12" gate="G$1" pin="C"/>
<pinref part="P-24" gate="1" pin="-5V"/>
<wire x1="213.36" y1="121.92" x2="213.36" y2="119.38" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T14" gate="G$1" pin="C"/>
<pinref part="P-25" gate="1" pin="-5V"/>
<wire x1="213.36" y1="58.42" x2="213.36" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R33" gate="G$1" pin="2"/>
<pinref part="P-26" gate="1" pin="-5V"/>
</segment>
<segment>
<pinref part="R44" gate="G$1" pin="2"/>
<pinref part="P-27" gate="1" pin="-5V"/>
</segment>
</net>
<net name="0V" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="GND1" gate="1" pin="0V"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="GND"/>
<pinref part="GND2" gate="1" pin="0V"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="1"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="55.88" x2="2.54" y2="55.88" width="0.1524" layer="91"/>
<pinref part="GND3" gate="1" pin="0V"/>
<wire x1="-2.54" y1="53.34" x2="-2.54" y2="55.88" width="0.1524" layer="91"/>
<junction x="-2.54" y="55.88"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="1"/>
<pinref part="C5" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="83.82" x2="2.54" y2="83.82" width="0.1524" layer="91"/>
<pinref part="GND4" gate="1" pin="0V"/>
<wire x1="-2.54" y1="81.28" x2="-2.54" y2="83.82" width="0.1524" layer="91"/>
<junction x="-2.54" y="83.82"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GND"/>
<pinref part="GND5" gate="1" pin="0V"/>
<wire x1="2.54" y1="12.7" x2="2.54" y2="10.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C7" gate="G$1" pin="1"/>
<pinref part="GND6" gate="1" pin="0V"/>
</segment>
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<pinref part="C8" gate="G$1" pin="1"/>
<wire x1="50.8" y1="7.62" x2="58.42" y2="7.62" width="0.1524" layer="91"/>
<wire x1="58.42" y1="7.62" x2="58.42" y2="10.16" width="0.1524" layer="91"/>
<pinref part="GND7" gate="1" pin="0V"/>
<junction x="50.8" y="7.62"/>
</segment>
<segment>
<pinref part="C10" gate="G$1" pin="2"/>
<wire x1="104.14" y1="53.34" x2="104.14" y2="38.1" width="0.1524" layer="91"/>
<pinref part="GND8" gate="1" pin="0V"/>
<wire x1="104.14" y1="35.56" x2="104.14" y2="38.1" width="0.1524" layer="91"/>
<junction x="104.14" y="38.1"/>
<pinref part="C9" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="C13" gate="G$1" pin="2"/>
<pinref part="GND11" gate="1" pin="0V"/>
<wire x1="86.36" y1="-71.12" x2="86.36" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-68.58" x2="88.9" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="C12" gate="G$1" pin="2"/>
<wire x1="88.9" y1="-53.34" x2="86.36" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-53.34" x2="86.36" y2="-68.58" width="0.1524" layer="91"/>
<junction x="86.36" y="-68.58"/>
</segment>
<segment>
<pinref part="C15" gate="G$1" pin="2"/>
<wire x1="193.04" y1="22.86" x2="193.04" y2="7.62" width="0.1524" layer="91"/>
<pinref part="GND12" gate="1" pin="0V"/>
<wire x1="193.04" y1="5.08" x2="193.04" y2="7.62" width="0.1524" layer="91"/>
<junction x="193.04" y="7.62"/>
<pinref part="C14" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="R10" gate="G$1" pin="1"/>
<pinref part="GND13" gate="1" pin="0V"/>
</segment>
<segment>
<pinref part="R13" gate="G$1" pin="1"/>
<pinref part="GND18" gate="1" pin="0V"/>
<wire x1="261.62" y1="15.24" x2="259.08" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC4" gate="D" pin="I1"/>
<pinref part="GND19" gate="1" pin="0V"/>
<wire x1="139.7" y1="-33.02" x2="137.16" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="137.16" y1="-33.02" x2="137.16" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="142.24" y1="-27.94" x2="139.7" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="139.7" y1="-27.94" x2="137.16" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="137.16" y1="-27.94" x2="137.16" y2="-33.02" width="0.1524" layer="91"/>
<junction x="137.16" y="-33.02"/>
<pinref part="IC4" gate="D" pin="I0"/>
<junction x="139.7" y="-27.94"/>
</segment>
<segment>
<pinref part="C17" gate="G$1" pin="1"/>
<pinref part="GND20" gate="1" pin="0V"/>
</segment>
<segment>
<pinref part="C19" gate="G$1" pin="2"/>
<wire x1="104.14" y1="-53.34" x2="104.14" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="GND21" gate="1" pin="0V"/>
<wire x1="104.14" y1="-71.12" x2="104.14" y2="-68.58" width="0.1524" layer="91"/>
<junction x="104.14" y="-68.58"/>
<pinref part="C18" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="165.1" y1="-25.4" x2="165.1" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="GND22" gate="1" pin="0V"/>
<pinref part="C20" gate="G$1" pin="2"/>
<pinref part="IC4" gate="P" pin="VSS"/>
<wire x1="165.1" y1="-40.64" x2="165.1" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-40.64" x2="165.1" y2="-40.64" width="0.1524" layer="91"/>
<junction x="165.1" y="-40.64"/>
</segment>
<segment>
<pinref part="C23" gate="G$1" pin="2"/>
<pinref part="GND23" gate="1" pin="0V"/>
<wire x1="254" y1="-27.94" x2="254" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="C22" gate="G$1" pin="2"/>
<wire x1="254" y1="-7.62" x2="254" y2="-27.94" width="0.1524" layer="91"/>
<junction x="254" y="-27.94"/>
</segment>
<segment>
<pinref part="IC3" gate="P" pin="GND"/>
<pinref part="GND24" gate="1" pin="0V"/>
<wire x1="266.7" y1="-25.4" x2="266.7" y2="-30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R16" gate="G$1" pin="1"/>
<pinref part="GND25" gate="1" pin="0V"/>
</segment>
<segment>
<pinref part="U5" gate="G$1" pin="GND"/>
<pinref part="GND26" gate="1" pin="0V"/>
</segment>
<segment>
<pinref part="C25" gate="G$1" pin="1"/>
<pinref part="C26" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="111.76" x2="2.54" y2="111.76" width="0.1524" layer="91"/>
<pinref part="GND27" gate="1" pin="0V"/>
<wire x1="-2.54" y1="109.22" x2="-2.54" y2="111.76" width="0.1524" layer="91"/>
<junction x="-2.54" y="111.76"/>
</segment>
<segment>
<pinref part="C27" gate="G$1" pin="1"/>
<pinref part="C28" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="139.7" x2="2.54" y2="139.7" width="0.1524" layer="91"/>
<pinref part="GND28" gate="1" pin="0V"/>
<wire x1="-2.54" y1="137.16" x2="-2.54" y2="139.7" width="0.1524" layer="91"/>
<junction x="-2.54" y="139.7"/>
</segment>
<segment>
<pinref part="C30" gate="G$1" pin="2"/>
<wire x1="104.14" y1="109.22" x2="104.14" y2="93.98" width="0.1524" layer="91"/>
<pinref part="GND29" gate="1" pin="0V"/>
<wire x1="104.14" y1="91.44" x2="104.14" y2="93.98" width="0.1524" layer="91"/>
<junction x="104.14" y="93.98"/>
<pinref part="C29" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="R19" gate="G$1" pin="1"/>
<pinref part="GND32" gate="1" pin="0V"/>
</segment>
<segment>
<pinref part="U7" gate="G$1" pin="GND"/>
<pinref part="GND33" gate="1" pin="0V"/>
</segment>
<segment>
<pinref part="C33" gate="G$1" pin="1"/>
<pinref part="C34" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="167.64" x2="2.54" y2="167.64" width="0.1524" layer="91"/>
<pinref part="GND34" gate="1" pin="0V"/>
<wire x1="-2.54" y1="165.1" x2="-2.54" y2="167.64" width="0.1524" layer="91"/>
<junction x="-2.54" y="167.64"/>
</segment>
<segment>
<pinref part="C35" gate="G$1" pin="1"/>
<pinref part="C36" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="195.58" x2="2.54" y2="195.58" width="0.1524" layer="91"/>
<pinref part="GND35" gate="1" pin="0V"/>
<wire x1="-2.54" y1="193.04" x2="-2.54" y2="195.58" width="0.1524" layer="91"/>
<junction x="-2.54" y="195.58"/>
</segment>
<segment>
<pinref part="C38" gate="G$1" pin="2"/>
<wire x1="104.14" y1="165.1" x2="104.14" y2="149.86" width="0.1524" layer="91"/>
<pinref part="GND36" gate="1" pin="0V"/>
<wire x1="104.14" y1="147.32" x2="104.14" y2="149.86" width="0.1524" layer="91"/>
<junction x="104.14" y="149.86"/>
<pinref part="C37" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="R22" gate="G$1" pin="1"/>
<pinref part="GND39" gate="1" pin="0V"/>
</segment>
<segment>
<pinref part="U9" gate="G$1" pin="GND"/>
<pinref part="GND40" gate="1" pin="0V"/>
</segment>
<segment>
<pinref part="C41" gate="G$1" pin="1"/>
<pinref part="C42" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="220.98" x2="2.54" y2="220.98" width="0.1524" layer="91"/>
<pinref part="GND41" gate="1" pin="0V"/>
<wire x1="-2.54" y1="218.44" x2="-2.54" y2="220.98" width="0.1524" layer="91"/>
<junction x="-2.54" y="220.98"/>
</segment>
<segment>
<pinref part="C43" gate="G$1" pin="1"/>
<pinref part="C44" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="248.92" x2="2.54" y2="248.92" width="0.1524" layer="91"/>
<pinref part="GND42" gate="1" pin="0V"/>
<wire x1="-2.54" y1="246.38" x2="-2.54" y2="248.92" width="0.1524" layer="91"/>
<junction x="-2.54" y="248.92"/>
</segment>
<segment>
<pinref part="C46" gate="G$1" pin="2"/>
<wire x1="104.14" y1="218.44" x2="104.14" y2="203.2" width="0.1524" layer="91"/>
<pinref part="GND43" gate="1" pin="0V"/>
<wire x1="104.14" y1="200.66" x2="104.14" y2="203.2" width="0.1524" layer="91"/>
<junction x="104.14" y="203.2"/>
<pinref part="C45" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="IC3" gate="A" pin="INH"/>
<pinref part="GND17" gate="1" pin="0V"/>
<wire x1="223.52" y1="27.94" x2="215.9" y2="27.94" width="0.1524" layer="91"/>
<wire x1="215.9" y1="27.94" x2="215.9" y2="22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C49" gate="G$1" pin="2"/>
<wire x1="193.04" y1="93.98" x2="193.04" y2="78.74" width="0.1524" layer="91"/>
<pinref part="GND16" gate="1" pin="0V"/>
<wire x1="193.04" y1="76.2" x2="193.04" y2="78.74" width="0.1524" layer="91"/>
<junction x="193.04" y="78.74"/>
<pinref part="C48" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="R26" gate="G$1" pin="1"/>
<pinref part="GND46" gate="1" pin="0V"/>
</segment>
<segment>
<pinref part="R29" gate="G$1" pin="1"/>
<pinref part="GND49" gate="1" pin="0V"/>
<wire x1="261.62" y1="33.02" x2="259.08" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C52" gate="G$1" pin="2"/>
<wire x1="193.04" y1="152.4" x2="193.04" y2="137.16" width="0.1524" layer="91"/>
<pinref part="GND50" gate="1" pin="0V"/>
<wire x1="193.04" y1="134.62" x2="193.04" y2="137.16" width="0.1524" layer="91"/>
<junction x="193.04" y="137.16"/>
<pinref part="C51" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="R32" gate="G$1" pin="1"/>
<pinref part="GND51" gate="1" pin="0V"/>
</segment>
<segment>
<pinref part="R35" gate="G$1" pin="1"/>
<pinref part="GND54" gate="1" pin="0V"/>
<wire x1="261.62" y1="53.34" x2="259.08" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T1" gate="G$1" pin="C"/>
<pinref part="GND55" gate="1" pin="0V"/>
<pinref part="U1" gate="G$1" pin="GSET"/>
<wire x1="35.56" y1="73.66" x2="40.64" y2="73.66" width="0.1524" layer="91"/>
<junction x="40.64" y="73.66"/>
</segment>
<segment>
<pinref part="T2" gate="G$1" pin="C"/>
<pinref part="GND10" gate="1" pin="0V"/>
<pinref part="U5" gate="G$1" pin="GSET"/>
<wire x1="35.56" y1="129.54" x2="40.64" y2="129.54" width="0.1524" layer="91"/>
<junction x="40.64" y="129.54"/>
</segment>
<segment>
<pinref part="T3" gate="G$1" pin="C"/>
<pinref part="GND31" gate="1" pin="0V"/>
<pinref part="U7" gate="G$1" pin="GSET"/>
<wire x1="35.56" y1="185.42" x2="40.64" y2="185.42" width="0.1524" layer="91"/>
<junction x="40.64" y="185.42"/>
</segment>
<segment>
<pinref part="T4" gate="G$1" pin="C"/>
<pinref part="GND38" gate="1" pin="0V"/>
<pinref part="U9" gate="G$1" pin="GSET"/>
<wire x1="35.56" y1="238.76" x2="40.64" y2="238.76" width="0.1524" layer="91"/>
<junction x="40.64" y="238.76"/>
</segment>
<segment>
<pinref part="X2" gate="_GND" pin="S"/>
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
<pinref part="TO-PHASE-DELAY" gate="-1" pin="S"/>
<pinref part="GND56" gate="1" pin="0V"/>
</segment>
<segment>
<pinref part="X4" gate="-1" pin="S"/>
<pinref part="GND57" gate="1" pin="0V"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="2"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="-15.24" y1="66.04" x2="-15.24" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IN"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="7.62" y1="73.66" x2="2.54" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="INPUT"/>
<pinref part="C6" gate="G$1" pin="2"/>
<wire x1="2.54" y1="22.86" x2="0" y2="22.86" width="0.1524" layer="91"/>
<wire x1="0" y1="22.86" x2="0" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="R_SET"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="43.18" y1="17.78" x2="50.8" y2="17.78" width="0.1524" layer="91"/>
<pinref part="C8" gate="G$1" pin="2"/>
<wire x1="58.42" y1="17.78" x2="50.8" y2="17.78" width="0.1524" layer="91"/>
<junction x="50.8" y="17.78"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="OUT"/>
<pinref part="U3" gate="G$1" pin="+IN"/>
<wire x1="35.56" y1="68.58" x2="40.64" y2="68.58" width="0.1524" layer="91"/>
<wire x1="40.64" y1="68.58" x2="45.72" y2="68.58" width="0.1524" layer="91"/>
<wire x1="40.64" y1="68.58" x2="40.64" y2="40.64" width="0.1524" layer="91"/>
<junction x="40.64" y="68.58"/>
<wire x1="40.64" y1="40.64" x2="66.04" y2="40.64" width="0.1524" layer="91"/>
<wire x1="66.04" y1="40.64" x2="66.04" y2="15.24" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="1"/>
<wire x1="0" y1="38.1" x2="0" y2="40.64" width="0.1524" layer="91"/>
<wire x1="0" y1="40.64" x2="40.64" y2="40.64" width="0.1524" layer="91"/>
<junction x="40.64" y="40.64"/>
<pinref part="TO-PHASE-DELAY" gate="-2" pin="S"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U3" gate="G$2" pin="OUT"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="96.52" y1="63.5" x2="99.06" y2="63.5" width="0.1524" layer="91"/>
<wire x1="99.06" y1="63.5" x2="101.6" y2="63.5" width="0.1524" layer="91"/>
<wire x1="99.06" y1="63.5" x2="99.06" y2="55.88" width="0.1524" layer="91"/>
<junction x="99.06" y="63.5"/>
<pinref part="U3" gate="G$2" pin="-IN"/>
<wire x1="99.06" y1="55.88" x2="81.28" y2="55.88" width="0.1524" layer="91"/>
<wire x1="81.28" y1="55.88" x2="81.28" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<pinref part="SIFF_IN1" gate="1" pin="P"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="IC1" gate="A" pin="OUT"/>
<wire x1="66.04" y1="-33.02" x2="68.58" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-33.02" x2="68.58" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="-IN"/>
<wire x1="68.58" y1="-40.64" x2="50.8" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-40.64" x2="50.8" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="71.12" y1="-33.02" x2="68.58" y2="-33.02" width="0.1524" layer="91"/>
<junction x="68.58" y="-33.02"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="IC1" gate="B" pin="OUT"/>
<wire x1="48.26" y1="-45.72" x2="50.8" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-45.72" x2="50.8" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="IC1" gate="B" pin="-IN"/>
<wire x1="50.8" y1="-53.34" x2="33.02" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-53.34" x2="33.02" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="53.34" y1="-45.72" x2="50.8" y2="-45.72" width="0.1524" layer="91"/>
<junction x="50.8" y="-45.72"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="IC2" gate="A" pin="OUT"/>
<wire x1="30.48" y1="-58.42" x2="33.02" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-58.42" x2="33.02" y2="-66.04" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="-IN"/>
<wire x1="33.02" y1="-66.04" x2="15.24" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-66.04" x2="15.24" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="35.56" y1="-58.42" x2="33.02" y2="-58.42" width="0.1524" layer="91"/>
<junction x="33.02" y="-58.42"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="IC2" gate="B" pin="OUT"/>
<wire x1="12.7" y1="-71.12" x2="15.24" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-71.12" x2="15.24" y2="-78.74" width="0.1524" layer="91"/>
<pinref part="IC2" gate="B" pin="-IN"/>
<wire x1="15.24" y1="-78.74" x2="-2.54" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="-78.74" x2="-2.54" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="17.78" y1="-71.12" x2="15.24" y2="-71.12" width="0.1524" layer="91"/>
<junction x="15.24" y="-71.12"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="63.5" y1="-45.72" x2="76.2" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-45.72" x2="76.2" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="X1" gate="_BPORCH" pin="S"/>
<wire x1="76.2" y1="-35.56" x2="83.82" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="81.28" y1="-33.02" x2="83.82" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="X1" gate="_ODD/EVEN" pin="S"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="45.72" y1="-58.42" x2="78.74" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-58.42" x2="78.74" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="X1" gate="_VSYNC" pin="S"/>
<wire x1="78.74" y1="-38.1" x2="83.82" y2="-38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="27.94" y1="-71.12" x2="81.28" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-71.12" x2="81.28" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="X1" gate="_HSYNC" pin="S"/>
<wire x1="81.28" y1="-40.64" x2="83.82" y2="-40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="ODD/EVEN"/>
<wire x1="43.18" y1="22.86" x2="45.72" y2="22.86" width="0.1524" layer="91"/>
<wire x1="45.72" y1="22.86" x2="45.72" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="+IN"/>
<wire x1="45.72" y1="-30.48" x2="50.8" y2="-30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="BURST"/>
<wire x1="43.18" y1="12.7" x2="43.18" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="IC1" gate="B" pin="+IN"/>
<wire x1="43.18" y1="-20.32" x2="33.02" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-20.32" x2="33.02" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="I1"/>
<wire x1="81.28" y1="-20.32" x2="43.18" y2="-20.32" width="0.1524" layer="91"/>
<junction x="43.18" y="-20.32"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="VERT"/>
<wire x1="2.54" y1="17.78" x2="0" y2="17.78" width="0.1524" layer="91"/>
<wire x1="0" y1="17.78" x2="0" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="+IN"/>
<wire x1="0" y1="-5.08" x2="0" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="0" y1="-55.88" x2="15.24" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="IC4" gate="C" pin="I0"/>
<wire x1="139.7" y1="-12.7" x2="137.16" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="137.16" y1="-12.7" x2="137.16" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="137.16" y1="-5.08" x2="0" y2="-5.08" width="0.1524" layer="91"/>
<junction x="0" y="-5.08"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="SYNC"/>
<wire x1="2.54" y1="27.94" x2="-2.54" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="27.94" x2="-2.54" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="IC2" gate="B" pin="+IN"/>
<wire x1="-2.54" y1="-15.24" x2="-2.54" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="I0"/>
<wire x1="81.28" y1="-15.24" x2="-2.54" y2="-15.24" width="0.1524" layer="91"/>
<junction x="-2.54" y="-15.24"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="SIFF_OUT1" gate="1" pin="P"/>
<pinref part="R10" gate="G$1" pin="2"/>
<wire x1="144.78" y1="38.1" x2="147.32" y2="38.1" width="0.1524" layer="91"/>
<pinref part="R9" gate="G$1" pin="1"/>
<wire x1="149.86" y1="38.1" x2="147.32" y2="38.1" width="0.1524" layer="91"/>
<junction x="147.32" y="38.1"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="R9" gate="G$1" pin="2"/>
<pinref part="D3" gate="-B1" pin="AC"/>
<wire x1="160.02" y1="38.1" x2="162.56" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="+IN"/>
<wire x1="167.64" y1="38.1" x2="162.56" y2="38.1" width="0.1524" layer="91"/>
<junction x="162.56" y="38.1"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="1"/>
<pinref part="D1" gate="-B1" pin="AC"/>
<wire x1="-25.4" y1="73.66" x2="-20.32" y2="73.66" width="0.1524" layer="91"/>
<junction x="-20.32" y="73.66"/>
<wire x1="-20.32" y1="73.66" x2="-15.24" y2="73.66" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="73.66" x2="-15.24" y2="68.58" width="0.1524" layer="91"/>
<junction x="-15.24" y="73.66"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="-5.08" y1="73.66" x2="-15.24" y2="73.66" width="0.1524" layer="91"/>
<pinref part="VIDEO_IN1" gate="1" pin="P"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="R13" gate="G$1" pin="2"/>
<pinref part="R14" gate="G$1" pin="1"/>
<wire x1="271.78" y1="15.24" x2="274.32" y2="15.24" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$2" pin="-IN"/>
<wire x1="274.32" y1="15.24" x2="279.4" y2="15.24" width="0.1524" layer="91"/>
<wire x1="274.32" y1="20.32" x2="274.32" y2="15.24" width="0.1524" layer="91"/>
<junction x="274.32" y="15.24"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="R14" gate="G$1" pin="2"/>
<wire x1="289.56" y1="15.24" x2="292.1" y2="15.24" width="0.1524" layer="91"/>
<wire x1="292.1" y1="15.24" x2="292.1" y2="22.86" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$2" pin="OUT"/>
<wire x1="292.1" y1="22.86" x2="289.56" y2="22.86" width="0.1524" layer="91"/>
<pinref part="R41" gate="G$1" pin="1"/>
<wire x1="294.64" y1="22.86" x2="292.1" y2="22.86" width="0.1524" layer="91"/>
<junction x="292.1" y="22.86"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="IC4" gate="B" pin="O"/>
<pinref part="IC4" gate="C" pin="I1"/>
<wire x1="137.16" y1="-17.78" x2="139.7" y2="-17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="IC4" gate="A" pin="O"/>
<pinref part="R15" gate="G$1" pin="1"/>
<wire x1="96.52" y1="-17.78" x2="99.06" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="D6" gate="-B1" pin="A"/>
<wire x1="99.06" y1="-17.78" x2="101.6" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="109.22" y1="-10.16" x2="99.06" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-10.16" x2="99.06" y2="-17.78" width="0.1524" layer="91"/>
<junction x="99.06" y="-17.78"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="IC4" gate="B" pin="I0"/>
<wire x1="121.92" y1="-15.24" x2="119.38" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="119.38" y1="-15.24" x2="119.38" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="IC4" gate="B" pin="I1"/>
<wire x1="119.38" y1="-17.78" x2="119.38" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="119.38" y1="-20.32" x2="121.92" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="R15" gate="G$1" pin="2"/>
<wire x1="111.76" y1="-17.78" x2="114.3" y2="-17.78" width="0.1524" layer="91"/>
<junction x="119.38" y="-17.78"/>
<pinref part="D6" gate="-B1" pin="AC"/>
<wire x1="114.3" y1="-17.78" x2="119.38" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="114.3" y1="-12.7" x2="114.3" y2="-17.78" width="0.1524" layer="91"/>
<junction x="114.3" y="-17.78"/>
<pinref part="C17" gate="G$1" pin="2"/>
<wire x1="114.3" y1="-20.32" x2="114.3" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="D6" gate="-B1" pin="C"/>
<wire x1="119.38" y1="-10.16" x2="119.38" y2="-15.24" width="0.1524" layer="91"/>
<junction x="119.38" y="-15.24"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="2"/>
<pinref part="R16" gate="G$1" pin="2"/>
<wire x1="-15.24" y1="121.92" x2="-15.24" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="IN"/>
<pinref part="C24" gate="G$1" pin="2"/>
<wire x1="7.62" y1="129.54" x2="2.54" y2="129.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="OUT"/>
<pinref part="U6" gate="G$1" pin="+IN"/>
<wire x1="35.56" y1="124.46" x2="45.72" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="U6" gate="G$2" pin="OUT"/>
<pinref part="R18" gate="G$1" pin="1"/>
<wire x1="96.52" y1="119.38" x2="99.06" y2="119.38" width="0.1524" layer="91"/>
<wire x1="99.06" y1="119.38" x2="101.6" y2="119.38" width="0.1524" layer="91"/>
<wire x1="99.06" y1="119.38" x2="99.06" y2="111.76" width="0.1524" layer="91"/>
<junction x="99.06" y="119.38"/>
<pinref part="U6" gate="G$2" pin="-IN"/>
<wire x1="99.06" y1="111.76" x2="81.28" y2="111.76" width="0.1524" layer="91"/>
<wire x1="81.28" y1="111.76" x2="81.28" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="R18" gate="G$1" pin="2"/>
<pinref part="SIFF_IN2" gate="1" pin="P"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="1"/>
<pinref part="D7" gate="-B1" pin="AC"/>
<wire x1="-25.4" y1="129.54" x2="-20.32" y2="129.54" width="0.1524" layer="91"/>
<junction x="-20.32" y="129.54"/>
<wire x1="-20.32" y1="129.54" x2="-15.24" y2="129.54" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="129.54" x2="-15.24" y2="124.46" width="0.1524" layer="91"/>
<junction x="-15.24" y="129.54"/>
<pinref part="C24" gate="G$1" pin="1"/>
<wire x1="-5.08" y1="129.54" x2="-15.24" y2="129.54" width="0.1524" layer="91"/>
<pinref part="VIDEO_IN2" gate="1" pin="P"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="JP3" gate="G$1" pin="2"/>
<pinref part="R19" gate="G$1" pin="2"/>
<wire x1="-15.24" y1="177.8" x2="-15.24" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="U7" gate="G$1" pin="IN"/>
<pinref part="C32" gate="G$1" pin="2"/>
<wire x1="7.62" y1="185.42" x2="2.54" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="U7" gate="G$1" pin="OUT"/>
<pinref part="U8" gate="G$1" pin="+IN"/>
<wire x1="35.56" y1="180.34" x2="45.72" y2="180.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="U8" gate="G$2" pin="OUT"/>
<pinref part="R21" gate="G$1" pin="1"/>
<wire x1="96.52" y1="175.26" x2="99.06" y2="175.26" width="0.1524" layer="91"/>
<wire x1="99.06" y1="175.26" x2="101.6" y2="175.26" width="0.1524" layer="91"/>
<wire x1="99.06" y1="175.26" x2="99.06" y2="167.64" width="0.1524" layer="91"/>
<junction x="99.06" y="175.26"/>
<pinref part="U8" gate="G$2" pin="-IN"/>
<wire x1="99.06" y1="167.64" x2="81.28" y2="167.64" width="0.1524" layer="91"/>
<wire x1="81.28" y1="167.64" x2="81.28" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="R21" gate="G$1" pin="2"/>
<pinref part="SIFF_IN3" gate="1" pin="P"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="JP3" gate="G$1" pin="1"/>
<pinref part="D9" gate="-B1" pin="AC"/>
<wire x1="-25.4" y1="185.42" x2="-20.32" y2="185.42" width="0.1524" layer="91"/>
<junction x="-20.32" y="185.42"/>
<wire x1="-20.32" y1="185.42" x2="-15.24" y2="185.42" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="185.42" x2="-15.24" y2="180.34" width="0.1524" layer="91"/>
<junction x="-15.24" y="185.42"/>
<pinref part="C32" gate="G$1" pin="1"/>
<wire x1="-5.08" y1="185.42" x2="-15.24" y2="185.42" width="0.1524" layer="91"/>
<pinref part="VIDEO_IN3" gate="1" pin="P"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="2"/>
<pinref part="R22" gate="G$1" pin="2"/>
<wire x1="-15.24" y1="231.14" x2="-15.24" y2="226.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="U9" gate="G$1" pin="IN"/>
<pinref part="C40" gate="G$1" pin="2"/>
<wire x1="7.62" y1="238.76" x2="2.54" y2="238.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="U9" gate="G$1" pin="OUT"/>
<pinref part="U10" gate="G$1" pin="+IN"/>
<wire x1="35.56" y1="233.68" x2="45.72" y2="233.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="U10" gate="G$2" pin="OUT"/>
<pinref part="R24" gate="G$1" pin="1"/>
<wire x1="96.52" y1="228.6" x2="99.06" y2="228.6" width="0.1524" layer="91"/>
<wire x1="99.06" y1="228.6" x2="101.6" y2="228.6" width="0.1524" layer="91"/>
<wire x1="99.06" y1="228.6" x2="99.06" y2="220.98" width="0.1524" layer="91"/>
<junction x="99.06" y="228.6"/>
<pinref part="U10" gate="G$2" pin="-IN"/>
<wire x1="99.06" y1="220.98" x2="81.28" y2="220.98" width="0.1524" layer="91"/>
<wire x1="81.28" y1="220.98" x2="81.28" y2="226.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$57" class="0">
<segment>
<pinref part="R24" gate="G$1" pin="2"/>
<pinref part="SIFF_IN4" gate="1" pin="P"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="1"/>
<pinref part="D11" gate="-B1" pin="AC"/>
<wire x1="-25.4" y1="238.76" x2="-20.32" y2="238.76" width="0.1524" layer="91"/>
<junction x="-20.32" y="238.76"/>
<wire x1="-20.32" y1="238.76" x2="-15.24" y2="238.76" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="238.76" x2="-15.24" y2="233.68" width="0.1524" layer="91"/>
<junction x="-15.24" y="238.76"/>
<pinref part="C40" gate="G$1" pin="1"/>
<wire x1="-5.08" y1="238.76" x2="-15.24" y2="238.76" width="0.1524" layer="91"/>
<pinref part="VIDEO_IN4" gate="1" pin="P"/>
</segment>
</net>
<net name="N$59" class="0">
<segment>
<pinref part="IC3" gate="A" pin="B"/>
<wire x1="220.98" y1="22.86" x2="223.52" y2="22.86" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="A"/>
<wire x1="223.52" y1="25.4" x2="220.98" y2="25.4" width="0.1524" layer="91"/>
<wire x1="220.98" y1="25.4" x2="220.98" y2="22.86" width="0.1524" layer="91"/>
<junction x="220.98" y="22.86"/>
<pinref part="IC3" gate="A" pin="C"/>
<wire x1="223.52" y1="20.32" x2="220.98" y2="20.32" width="0.1524" layer="91"/>
<wire x1="220.98" y1="20.32" x2="220.98" y2="22.86" width="0.1524" layer="91"/>
<pinref part="IC4" gate="C" pin="O"/>
<wire x1="154.94" y1="-15.24" x2="220.98" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="220.98" y1="20.32" x2="220.98" y2="-15.24" width="0.1524" layer="91"/>
<junction x="220.98" y="20.32"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="SIFF_OUT2" gate="1" pin="P"/>
<pinref part="R26" gate="G$1" pin="2"/>
<wire x1="144.78" y1="106.68" x2="147.32" y2="106.68" width="0.1524" layer="91"/>
<pinref part="R25" gate="G$1" pin="1"/>
<wire x1="149.86" y1="106.68" x2="147.32" y2="106.68" width="0.1524" layer="91"/>
<junction x="147.32" y="106.68"/>
</segment>
</net>
<net name="N$60" class="0">
<segment>
<pinref part="R25" gate="G$1" pin="2"/>
<pinref part="D13" gate="-B1" pin="AC"/>
<wire x1="160.02" y1="106.68" x2="162.56" y2="106.68" width="0.1524" layer="91"/>
<pinref part="U11" gate="G$1" pin="+IN"/>
<wire x1="167.64" y1="106.68" x2="162.56" y2="106.68" width="0.1524" layer="91"/>
<junction x="162.56" y="106.68"/>
</segment>
</net>
<net name="N$64" class="0">
<segment>
<pinref part="R29" gate="G$1" pin="2"/>
<pinref part="R30" gate="G$1" pin="1"/>
<wire x1="271.78" y1="33.02" x2="274.32" y2="33.02" width="0.1524" layer="91"/>
<pinref part="U11" gate="G$2" pin="-IN"/>
<wire x1="274.32" y1="33.02" x2="279.4" y2="33.02" width="0.1524" layer="91"/>
<wire x1="274.32" y1="38.1" x2="274.32" y2="33.02" width="0.1524" layer="91"/>
<junction x="274.32" y="33.02"/>
</segment>
</net>
<net name="N$65" class="0">
<segment>
<pinref part="R30" gate="G$1" pin="2"/>
<wire x1="289.56" y1="33.02" x2="292.1" y2="33.02" width="0.1524" layer="91"/>
<wire x1="292.1" y1="33.02" x2="292.1" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U11" gate="G$2" pin="OUT"/>
<wire x1="292.1" y1="40.64" x2="289.56" y2="40.64" width="0.1524" layer="91"/>
<pinref part="R42" gate="G$1" pin="1"/>
<wire x1="294.64" y1="40.64" x2="292.1" y2="40.64" width="0.1524" layer="91"/>
<junction x="292.1" y="40.64"/>
</segment>
</net>
<net name="N$67" class="0">
<segment>
<pinref part="SIFF_OUT3" gate="1" pin="P"/>
<pinref part="R32" gate="G$1" pin="2"/>
<wire x1="144.78" y1="162.56" x2="147.32" y2="162.56" width="0.1524" layer="91"/>
<pinref part="R31" gate="G$1" pin="1"/>
<wire x1="149.86" y1="162.56" x2="147.32" y2="162.56" width="0.1524" layer="91"/>
<junction x="147.32" y="162.56"/>
</segment>
</net>
<net name="N$68" class="0">
<segment>
<pinref part="R31" gate="G$1" pin="2"/>
<pinref part="D16" gate="-B1" pin="AC"/>
<wire x1="160.02" y1="162.56" x2="162.56" y2="162.56" width="0.1524" layer="91"/>
<pinref part="U12" gate="G$1" pin="+IN"/>
<wire x1="167.64" y1="162.56" x2="162.56" y2="162.56" width="0.1524" layer="91"/>
<junction x="162.56" y="162.56"/>
</segment>
</net>
<net name="N$72" class="0">
<segment>
<pinref part="R35" gate="G$1" pin="2"/>
<pinref part="R36" gate="G$1" pin="1"/>
<wire x1="271.78" y1="53.34" x2="274.32" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U12" gate="G$2" pin="-IN"/>
<wire x1="274.32" y1="53.34" x2="279.4" y2="53.34" width="0.1524" layer="91"/>
<wire x1="274.32" y1="58.42" x2="274.32" y2="53.34" width="0.1524" layer="91"/>
<junction x="274.32" y="53.34"/>
</segment>
</net>
<net name="N$73" class="0">
<segment>
<pinref part="R36" gate="G$1" pin="2"/>
<wire x1="289.56" y1="53.34" x2="292.1" y2="53.34" width="0.1524" layer="91"/>
<wire x1="292.1" y1="53.34" x2="292.1" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U12" gate="G$2" pin="OUT"/>
<wire x1="292.1" y1="60.96" x2="289.56" y2="60.96" width="0.1524" layer="91"/>
<pinref part="R43" gate="G$1" pin="1"/>
<wire x1="294.64" y1="60.96" x2="292.1" y2="60.96" width="0.1524" layer="91"/>
<junction x="292.1" y="60.96"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="IC3" gate="A" pin="Z"/>
<wire x1="248.92" y1="35.56" x2="251.46" y2="35.56" width="0.1524" layer="91"/>
<wire x1="251.46" y1="35.56" x2="251.46" y2="25.4" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$2" pin="+IN"/>
<wire x1="251.46" y1="25.4" x2="274.32" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$66" class="0">
<segment>
<pinref part="IC3" gate="A" pin="Y"/>
<pinref part="U11" gate="G$2" pin="+IN"/>
<wire x1="248.92" y1="43.18" x2="274.32" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$74" class="0">
<segment>
<pinref part="IC3" gate="A" pin="X"/>
<wire x1="248.92" y1="50.8" x2="251.46" y2="50.8" width="0.1524" layer="91"/>
<wire x1="251.46" y1="50.8" x2="251.46" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U12" gate="G$2" pin="+IN"/>
<wire x1="251.46" y1="63.5" x2="274.32" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$75" class="0">
<segment>
<pinref part="T1" gate="G$1" pin="E"/>
<pinref part="R37" gate="G$1" pin="1"/>
<wire x1="43.18" y1="83.82" x2="40.64" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$76" class="0">
<segment>
<pinref part="R37" gate="G$1" pin="2"/>
<pinref part="LED_VIN1" gate="1" pin="P"/>
</segment>
</net>
<net name="N$77" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="LOS"/>
<pinref part="T1" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$78" class="0">
<segment>
<pinref part="T2" gate="G$1" pin="E"/>
<pinref part="R38" gate="G$1" pin="1"/>
<wire x1="43.18" y1="139.7" x2="40.64" y2="139.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$79" class="0">
<segment>
<pinref part="R38" gate="G$1" pin="2"/>
<pinref part="LED_VIN2" gate="1" pin="P"/>
</segment>
</net>
<net name="N$80" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="LOS"/>
<pinref part="T2" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$81" class="0">
<segment>
<pinref part="T3" gate="G$1" pin="E"/>
<pinref part="R39" gate="G$1" pin="1"/>
<wire x1="43.18" y1="195.58" x2="40.64" y2="195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$82" class="0">
<segment>
<pinref part="R39" gate="G$1" pin="2"/>
<pinref part="LED_VIN3" gate="1" pin="P"/>
</segment>
</net>
<net name="N$84" class="0">
<segment>
<pinref part="T4" gate="G$1" pin="E"/>
<pinref part="R40" gate="G$1" pin="1"/>
<wire x1="43.18" y1="248.92" x2="40.64" y2="248.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$85" class="0">
<segment>
<pinref part="R40" gate="G$1" pin="2"/>
<pinref part="LED_VIN4" gate="1" pin="P"/>
</segment>
</net>
<net name="N$86" class="0">
<segment>
<pinref part="U9" gate="G$1" pin="LOS"/>
<pinref part="T4" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$83" class="0">
<segment>
<pinref part="U7" gate="G$1" pin="LOS"/>
<pinref part="T3" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$87" class="0">
<segment>
<pinref part="R41" gate="G$1" pin="2"/>
<pinref part="VIDEO_OUT1" gate="1" pin="P"/>
</segment>
</net>
<net name="N$88" class="0">
<segment>
<pinref part="VIDEO_OUT2" gate="1" pin="P"/>
<pinref part="R42" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$89" class="0">
<segment>
<pinref part="VIDEO_OUT3" gate="1" pin="P"/>
<pinref part="R43" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$90" class="0">
<segment>
<pinref part="IC3" gate="A" pin="Z1"/>
<wire x1="210.82" y1="33.02" x2="210.82" y2="15.24" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="Y1"/>
<wire x1="223.52" y1="40.64" x2="210.82" y2="40.64" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="X1"/>
<wire x1="223.52" y1="48.26" x2="210.82" y2="48.26" width="0.1524" layer="91"/>
<wire x1="210.82" y1="48.26" x2="210.82" y2="40.64" width="0.1524" layer="91"/>
<junction x="210.82" y="40.64"/>
<wire x1="210.82" y1="40.64" x2="210.82" y2="33.02" width="0.1524" layer="91"/>
<junction x="210.82" y="33.02"/>
<wire x1="210.82" y1="33.02" x2="223.52" y2="33.02" width="0.1524" layer="91"/>
<pinref part="X4" gate="-2" pin="S"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="U10" gate="G$1" pin="OUT"/>
<pinref part="R23" gate="G$1" pin="2"/>
<wire x1="66.04" y1="231.14" x2="63.5" y2="231.14" width="0.1524" layer="91"/>
<wire x1="63.5" y1="231.14" x2="60.96" y2="231.14" width="0.1524" layer="91"/>
<wire x1="63.5" y1="231.14" x2="63.5" y2="223.52" width="0.1524" layer="91"/>
<junction x="63.5" y="231.14"/>
<pinref part="U10" gate="G$1" pin="-IN"/>
<wire x1="63.5" y1="223.52" x2="45.72" y2="223.52" width="0.1524" layer="91"/>
<wire x1="45.72" y1="223.52" x2="45.72" y2="228.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="R23" gate="G$1" pin="1"/>
<pinref part="U10" gate="G$2" pin="+IN"/>
<wire x1="76.2" y1="231.14" x2="78.74" y2="231.14" width="0.1524" layer="91"/>
<pinref part="T5" gate="G$1" pin="E"/>
<wire x1="78.74" y1="231.14" x2="81.28" y2="231.14" width="0.1524" layer="91"/>
<wire x1="78.74" y1="233.68" x2="78.74" y2="231.14" width="0.1524" layer="91"/>
<junction x="78.74" y="231.14"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="-IN"/>
<wire x1="63.5" y1="170.18" x2="45.72" y2="170.18" width="0.1524" layer="91"/>
<wire x1="45.72" y1="170.18" x2="45.72" y2="175.26" width="0.1524" layer="91"/>
<pinref part="R20" gate="G$1" pin="1"/>
<pinref part="U8" gate="G$1" pin="OUT"/>
<wire x1="60.96" y1="177.8" x2="63.5" y2="177.8" width="0.1524" layer="91"/>
<wire x1="63.5" y1="177.8" x2="66.04" y2="177.8" width="0.1524" layer="91"/>
<wire x1="63.5" y1="170.18" x2="63.5" y2="177.8" width="0.1524" layer="91"/>
<junction x="63.5" y="177.8"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="R20" gate="G$1" pin="2"/>
<pinref part="U8" gate="G$2" pin="+IN"/>
<wire x1="76.2" y1="177.8" x2="78.74" y2="177.8" width="0.1524" layer="91"/>
<pinref part="T6" gate="G$1" pin="E"/>
<wire x1="78.74" y1="177.8" x2="81.28" y2="177.8" width="0.1524" layer="91"/>
<wire x1="78.74" y1="180.34" x2="78.74" y2="177.8" width="0.1524" layer="91"/>
<junction x="78.74" y="177.8"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="U6" gate="G$1" pin="OUT"/>
<pinref part="R17" gate="G$1" pin="1"/>
<wire x1="66.04" y1="121.92" x2="63.5" y2="121.92" width="0.1524" layer="91"/>
<wire x1="63.5" y1="121.92" x2="60.96" y2="121.92" width="0.1524" layer="91"/>
<wire x1="63.5" y1="121.92" x2="63.5" y2="114.3" width="0.1524" layer="91"/>
<junction x="63.5" y="121.92"/>
<pinref part="U6" gate="G$1" pin="-IN"/>
<wire x1="63.5" y1="114.3" x2="45.72" y2="114.3" width="0.1524" layer="91"/>
<wire x1="45.72" y1="114.3" x2="45.72" y2="119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="R17" gate="G$1" pin="2"/>
<pinref part="U6" gate="G$2" pin="+IN"/>
<wire x1="76.2" y1="121.92" x2="78.74" y2="121.92" width="0.1524" layer="91"/>
<pinref part="T7" gate="G$1" pin="E"/>
<wire x1="78.74" y1="121.92" x2="81.28" y2="121.92" width="0.1524" layer="91"/>
<wire x1="78.74" y1="124.46" x2="78.74" y2="121.92" width="0.1524" layer="91"/>
<junction x="78.74" y="121.92"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="OUT"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="66.04" y1="66.04" x2="63.5" y2="66.04" width="0.1524" layer="91"/>
<wire x1="63.5" y1="66.04" x2="60.96" y2="66.04" width="0.1524" layer="91"/>
<wire x1="63.5" y1="66.04" x2="63.5" y2="58.42" width="0.1524" layer="91"/>
<junction x="63.5" y="66.04"/>
<pinref part="U3" gate="G$1" pin="-IN"/>
<wire x1="63.5" y1="58.42" x2="45.72" y2="58.42" width="0.1524" layer="91"/>
<wire x1="45.72" y1="58.42" x2="45.72" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="U3" gate="G$2" pin="+IN"/>
<wire x1="76.2" y1="66.04" x2="78.74" y2="66.04" width="0.1524" layer="91"/>
<pinref part="T8" gate="G$1" pin="E"/>
<wire x1="78.74" y1="66.04" x2="81.28" y2="66.04" width="0.1524" layer="91"/>
<wire x1="78.74" y1="68.58" x2="78.74" y2="66.04" width="0.1524" layer="91"/>
<junction x="78.74" y="66.04"/>
</segment>
</net>
<net name="N$91" class="0">
<segment>
<pinref part="T8" gate="G$1" pin="B"/>
<wire x1="83.82" y1="73.66" x2="129.54" y2="73.66" width="0.1524" layer="91"/>
<wire x1="129.54" y1="73.66" x2="129.54" y2="116.84" width="0.1524" layer="91"/>
<pinref part="T7" gate="G$1" pin="B"/>
<wire x1="129.54" y1="116.84" x2="129.54" y2="129.54" width="0.1524" layer="91"/>
<wire x1="129.54" y1="129.54" x2="83.82" y2="129.54" width="0.1524" layer="91"/>
<pinref part="T6" gate="G$1" pin="B"/>
<wire x1="83.82" y1="185.42" x2="129.54" y2="185.42" width="0.1524" layer="91"/>
<wire x1="129.54" y1="185.42" x2="129.54" y2="172.72" width="0.1524" layer="91"/>
<junction x="129.54" y="129.54"/>
<pinref part="T5" gate="G$1" pin="B"/>
<wire x1="129.54" y1="172.72" x2="129.54" y2="129.54" width="0.1524" layer="91"/>
<wire x1="83.82" y1="238.76" x2="129.54" y2="238.76" width="0.1524" layer="91"/>
<wire x1="129.54" y1="238.76" x2="129.54" y2="193.04" width="0.1524" layer="91"/>
<junction x="129.54" y="185.42"/>
<pinref part="T9" gate="G$1" pin="B"/>
<wire x1="129.54" y1="193.04" x2="129.54" y2="185.42" width="0.1524" layer="91"/>
<wire x1="193.04" y1="172.72" x2="129.54" y2="172.72" width="0.1524" layer="91"/>
<junction x="129.54" y="172.72"/>
<pinref part="T11" gate="G$1" pin="B"/>
<wire x1="193.04" y1="116.84" x2="129.54" y2="116.84" width="0.1524" layer="91"/>
<junction x="129.54" y="116.84"/>
<wire x1="129.54" y1="73.66" x2="129.54" y2="53.34" width="0.1524" layer="91"/>
<wire x1="129.54" y1="53.34" x2="193.04" y2="53.34" width="0.1524" layer="91"/>
<junction x="129.54" y="73.66"/>
<pinref part="T13" gate="G$1" pin="B"/>
<pinref part="R_TBOT" gate="G$1" pin="S"/>
<wire x1="248.92" y1="193.04" x2="129.54" y2="193.04" width="0.1524" layer="91"/>
<junction x="129.54" y="193.04"/>
</segment>
</net>
<net name="N$69" class="0">
<segment>
<pinref part="U12" gate="G$1" pin="OUT"/>
<pinref part="R34" gate="G$1" pin="1"/>
<wire x1="182.88" y1="160.02" x2="185.42" y2="160.02" width="0.1524" layer="91"/>
<wire x1="185.42" y1="160.02" x2="187.96" y2="160.02" width="0.1524" layer="91"/>
<wire x1="185.42" y1="160.02" x2="185.42" y2="152.4" width="0.1524" layer="91"/>
<junction x="185.42" y="160.02"/>
<pinref part="U12" gate="G$1" pin="-IN"/>
<wire x1="185.42" y1="152.4" x2="167.64" y2="152.4" width="0.1524" layer="91"/>
<wire x1="167.64" y1="152.4" x2="167.64" y2="157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$70" class="0">
<segment>
<pinref part="T9" gate="G$1" pin="E"/>
<pinref part="T10" gate="G$1" pin="E"/>
<wire x1="198.12" y1="177.8" x2="200.66" y2="177.8" width="0.1524" layer="91"/>
<pinref part="R34" gate="G$1" pin="2"/>
<wire x1="200.66" y1="177.8" x2="203.2" y2="177.8" width="0.1524" layer="91"/>
<wire x1="198.12" y1="160.02" x2="200.66" y2="160.02" width="0.1524" layer="91"/>
<wire x1="200.66" y1="160.02" x2="218.44" y2="160.02" width="0.1524" layer="91"/>
<wire x1="218.44" y1="160.02" x2="218.44" y2="50.8" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="X0"/>
<wire x1="218.44" y1="50.8" x2="223.52" y2="50.8" width="0.1524" layer="91"/>
<wire x1="200.66" y1="177.8" x2="200.66" y2="160.02" width="0.1524" layer="91"/>
<junction x="200.66" y="177.8"/>
<junction x="200.66" y="160.02"/>
</segment>
</net>
<net name="N$61" class="0">
<segment>
<pinref part="U11" gate="G$1" pin="OUT"/>
<pinref part="R28" gate="G$1" pin="1"/>
<wire x1="182.88" y1="104.14" x2="185.42" y2="104.14" width="0.1524" layer="91"/>
<pinref part="U11" gate="G$1" pin="-IN"/>
<wire x1="185.42" y1="104.14" x2="187.96" y2="104.14" width="0.1524" layer="91"/>
<wire x1="167.64" y1="101.6" x2="167.64" y2="96.52" width="0.1524" layer="91"/>
<wire x1="167.64" y1="96.52" x2="185.42" y2="96.52" width="0.1524" layer="91"/>
<wire x1="185.42" y1="96.52" x2="185.42" y2="104.14" width="0.1524" layer="91"/>
<junction x="185.42" y="104.14"/>
</segment>
</net>
<net name="N$92" class="0">
<segment>
<pinref part="T11" gate="G$1" pin="E"/>
<pinref part="T12" gate="G$1" pin="E"/>
<wire x1="198.12" y1="121.92" x2="200.66" y2="121.92" width="0.1524" layer="91"/>
<pinref part="R28" gate="G$1" pin="2"/>
<wire x1="200.66" y1="121.92" x2="203.2" y2="121.92" width="0.1524" layer="91"/>
<wire x1="198.12" y1="104.14" x2="200.66" y2="104.14" width="0.1524" layer="91"/>
<wire x1="200.66" y1="104.14" x2="215.9" y2="104.14" width="0.1524" layer="91"/>
<wire x1="215.9" y1="104.14" x2="215.9" y2="43.18" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="Y0"/>
<wire x1="215.9" y1="43.18" x2="223.52" y2="43.18" width="0.1524" layer="91"/>
<wire x1="200.66" y1="121.92" x2="200.66" y2="104.14" width="0.1524" layer="91"/>
<junction x="200.66" y="121.92"/>
<junction x="200.66" y="104.14"/>
</segment>
</net>
<net name="N$62" class="0">
<segment>
<pinref part="T10" gate="G$1" pin="B"/>
<wire x1="208.28" y1="182.88" x2="226.06" y2="182.88" width="0.1524" layer="91"/>
<wire x1="226.06" y1="182.88" x2="226.06" y2="144.78" width="0.1524" layer="91"/>
<pinref part="T12" gate="G$1" pin="B"/>
<wire x1="226.06" y1="144.78" x2="226.06" y2="127" width="0.1524" layer="91"/>
<wire x1="226.06" y1="127" x2="208.28" y2="127" width="0.1524" layer="91"/>
<pinref part="T14" gate="G$1" pin="B"/>
<wire x1="208.28" y1="63.5" x2="226.06" y2="63.5" width="0.1524" layer="91"/>
<wire x1="226.06" y1="63.5" x2="226.06" y2="127" width="0.1524" layer="91"/>
<junction x="226.06" y="127"/>
<pinref part="R_TTOP" gate="G$1" pin="S"/>
<wire x1="248.92" y1="144.78" x2="226.06" y2="144.78" width="0.1524" layer="91"/>
<junction x="226.06" y="144.78"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="OUT"/>
<pinref part="R12" gate="G$1" pin="1"/>
<wire x1="182.88" y1="35.56" x2="185.42" y2="35.56" width="0.1524" layer="91"/>
<wire x1="185.42" y1="35.56" x2="187.96" y2="35.56" width="0.1524" layer="91"/>
<wire x1="185.42" y1="35.56" x2="185.42" y2="27.94" width="0.1524" layer="91"/>
<junction x="185.42" y="35.56"/>
<pinref part="U4" gate="G$1" pin="-IN"/>
<wire x1="185.42" y1="27.94" x2="167.64" y2="27.94" width="0.1524" layer="91"/>
<wire x1="167.64" y1="27.94" x2="167.64" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="T13" gate="G$1" pin="E"/>
<pinref part="T14" gate="G$1" pin="E"/>
<wire x1="198.12" y1="58.42" x2="200.66" y2="58.42" width="0.1524" layer="91"/>
<wire x1="200.66" y1="58.42" x2="203.2" y2="58.42" width="0.1524" layer="91"/>
<wire x1="200.66" y1="58.42" x2="200.66" y2="35.56" width="0.1524" layer="91"/>
<junction x="200.66" y="58.42"/>
<pinref part="R12" gate="G$1" pin="2"/>
<pinref part="IC3" gate="A" pin="Z0"/>
<wire x1="198.12" y1="35.56" x2="200.66" y2="35.56" width="0.1524" layer="91"/>
<wire x1="200.66" y1="35.56" x2="223.52" y2="35.56" width="0.1524" layer="91"/>
<junction x="200.66" y="35.56"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="R_TBOT" gate="G$1" pin="E"/>
<pinref part="R27" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$63" class="0">
<segment>
<pinref part="R_TBOT" gate="G$1" pin="A"/>
<pinref part="R33" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$71" class="0">
<segment>
<pinref part="R_TTOP" gate="G$1" pin="E"/>
<pinref part="R11" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$93" class="0">
<segment>
<pinref part="R_TTOP" gate="G$1" pin="A"/>
<pinref part="R44" gate="G$1" pin="1"/>
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
