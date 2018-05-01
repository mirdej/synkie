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
<layer number="1" name="Top" color="4" fill="1" visible="yes" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="yes" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="yes" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="yes" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="yes" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="yes" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="yes" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="yes" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="yes" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="yes" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="yes" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="yes" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="yes" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="yes" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="yes" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="yes" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="yes" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="yes" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="yes" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="yes" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="yes" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="yes" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="yes" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="yes" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="yes" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="yes" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="yes" active="no"/>
<layer number="53" name="tPadExt" color="7" fill="1" visible="yes" active="no"/>
<layer number="54" name="bPadExt" color="1" fill="1" visible="yes" active="no"/>
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
<package name="SOT666">
<description>SOT666 package after PEMX1 datasheet</description>
<wire x1="-0.848359375" y1="0.650240625" x2="0.848359375" y2="0.650240625" width="0.2032" layer="51"/>
<wire x1="0.848359375" y1="0.650240625" x2="0.848359375" y2="-0.650240625" width="0.2032" layer="21"/>
<wire x1="0.848359375" y1="-0.650240625" x2="-0.848359375" y2="-0.650240625" width="0.2032" layer="51"/>
<wire x1="-0.848359375" y1="-0.650240625" x2="-0.848359375" y2="0.650240625" width="0.2032" layer="21"/>
<circle x="-0.7" y="-0.25" radius="0.15" width="0" layer="21"/>
<smd name="1" x="-0.50038125" y="-0.8382" dx="0.254" dy="0.6096" layer="1"/>
<smd name="2" x="0" y="-0.8382" dx="0.254" dy="0.6096" layer="1"/>
<smd name="3" x="0.50038125" y="-0.8382" dx="0.254" dy="0.6096" layer="1"/>
<smd name="4" x="0.50038125" y="0.8382" dx="0.254" dy="0.6096" layer="1"/>
<smd name="5" x="0" y="0.8382" dx="0.254" dy="0.6096" layer="1"/>
<smd name="6" x="-0.50038125" y="0.8382" dx="0.6096" dy="0.254" layer="1" rot="R90"/>
<text x="-1.1" y="1.45" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.1" y="-2.7" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.60198125" y1="-1.0746" x2="-0.39878125" y2="-0.6" layer="51"/>
<rectangle x1="-0.1016" y1="-1.0746" x2="0.1016" y2="-0.6" layer="51"/>
<rectangle x1="0.39878125" y1="-1.0746" x2="0.60198125" y2="-0.6" layer="51"/>
<rectangle x1="0.39878125" y1="0.6" x2="0.60198125" y2="1.07441875" layer="51"/>
<rectangle x1="-0.1016" y1="0.6" x2="0.1016" y2="1.0746" layer="51"/>
<rectangle x1="-0.60198125" y1="0.6" x2="-0.39878125" y2="1.0746" layer="51"/>
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
<symbol name="0V">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="0V" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
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
<symbol name="LT1228-GM">
<wire x1="8.255" y1="-1.27" x2="6.985" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="5.08" y1="5.08" x2="7.62" y2="1.27" width="0.4064" layer="94"/>
<wire x1="7.62" y1="1.27" x2="10.16" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="7.62" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="0" y1="-2.54" x2="5.08" y2="5.08" width="0.4064" layer="94"/>
<text x="-3.81" y="13.335" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-22.86" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="15.875" y1="1.27" x2="17.145" y2="1.27" width="0.1524" layer="94"/>
<wire x1="16.51" y1="1.905" x2="16.51" y2="0.635" width="0.1524" layer="94"/>
<wire x1="21.59" y1="1.905" x2="21.59" y2="0.635" width="0.1524" layer="94"/>
<wire x1="19.05" y1="-5.08" x2="13.97" y2="2.54" width="0.4064" layer="94"/>
<wire x1="13.97" y1="2.54" x2="16.51" y2="2.54" width="0.4064" layer="94"/>
<wire x1="16.51" y1="2.54" x2="21.59" y2="2.54" width="0.4064" layer="94"/>
<wire x1="21.59" y1="2.54" x2="24.13" y2="2.54" width="0.4064" layer="94"/>
<wire x1="24.13" y1="2.54" x2="19.05" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="7.62" width="0" layer="94"/>
<wire x1="5.08" y1="7.62" x2="-5.08" y2="7.62" width="0" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-5.08" width="0" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="-2.54" y2="-5.08" width="0" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-2.54" y2="0" width="0" layer="94"/>
<wire x1="-2.54" y1="0" x2="-5.08" y2="0" width="0" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="7.62" y2="-7.62" width="0" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="-5.08" y2="-7.62" width="0" layer="94"/>
<wire x1="5.08" y1="7.62" x2="16.51" y2="7.62" width="0" layer="94"/>
<wire x1="16.51" y1="7.62" x2="16.51" y2="2.54" width="0" layer="94"/>
<wire x1="21.59" y1="2.54" x2="21.59" y2="7.62" width="0" layer="94"/>
<wire x1="21.59" y1="7.62" x2="27.94" y2="7.62" width="0" layer="94"/>
<wire x1="19.05" y1="-5.08" x2="19.05" y2="-7.62" width="0" layer="94"/>
<wire x1="19.05" y1="-7.62" x2="27.94" y2="-7.62" width="0" layer="94"/>
<wire x1="7.62" y1="1.27" x2="10.16" y2="1.27" width="0" layer="94"/>
<wire x1="10.16" y1="1.27" x2="12.7" y2="-1.27" width="0" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="-15.24" width="0" layer="94"/>
<wire x1="12.7" y1="-15.24" x2="27.94" y2="-15.24" width="0" layer="94"/>
<wire x1="-5.08" y1="12.7" x2="27.94" y2="12.7" width="0.254" layer="94"/>
<wire x1="27.94" y1="12.7" x2="27.94" y2="-15.24" width="0.254" layer="94"/>
<wire x1="27.94" y1="-15.24" x2="27.94" y2="-20.32" width="0.254" layer="94"/>
<wire x1="27.94" y1="-20.32" x2="-5.08" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-20.32" x2="-5.08" y2="12.7" width="0.254" layer="94"/>
<pin name="I-OUT" x="-10.16" y="7.62" length="middle"/>
<pin name="-IN" x="-10.16" y="0" length="middle"/>
<pin name="+IN" x="-10.16" y="-7.62" length="middle"/>
<pin name="VSS" x="-10.16" y="-15.24" length="middle"/>
<pin name="ISET" x="33.02" y="-15.24" length="middle" rot="R180"/>
<pin name="VOUT" x="33.02" y="-7.62" length="middle" rot="R180"/>
<pin name="VCC" x="33.02" y="0" length="middle" rot="R180"/>
<pin name="GAIN" x="33.02" y="7.62" length="middle" rot="R180"/>
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
<symbol name="PAD">
<wire x1="-1.016" y1="1.016" x2="1.016" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.016" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<text x="-1.143" y="1.8542" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.143" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
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
</symbols>
<devicesets>
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
<deviceset name="LT1228">
<gates>
<gate name="G$1" symbol="LT1228-GM" x="-10.16" y="5.08"/>
</gates>
<devices>
<device name="" package="SO08">
<connects>
<connect gate="G$1" pin="+IN" pad="3"/>
<connect gate="G$1" pin="-IN" pad="2"/>
<connect gate="G$1" pin="GAIN" pad="8"/>
<connect gate="G$1" pin="I-OUT" pad="1"/>
<connect gate="G$1" pin="ISET" pad="5"/>
<connect gate="G$1" pin="VCC" pad="7"/>
<connect gate="G$1" pin="VOUT" pad="6"/>
<connect gate="G$1" pin="VSS" pad="4"/>
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
<deviceset name="DUAL_OPAMP" prefix="IC" uservalue="yes">
<description>&lt;b&gt;Dual OP AMP&lt;/b&gt;</description>
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
<deviceset name="ALPS_RK09K111_H">
<description>ALPS Pot</description>
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
<deviceset name="TRANS_NPN_DUAL">
<gates>
<gate name="G$1" symbol="NPN" x="-10.16" y="0"/>
<gate name="G$2" symbol="NPN" x="10.16" y="0"/>
</gates>
<devices>
<device name="" package="SOT666">
<connects>
<connect gate="G$1" pin="B" pad="2"/>
<connect gate="G$1" pin="C" pad="6"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$2" pin="B" pad="5"/>
<connect gate="G$2" pin="C" pad="3"/>
<connect gate="G$2" pin="E" pad="4"/>
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
<part name="X1" library="synkie" deviceset="CON-POWER" device=""/>
<part name="P+1" library="synkie" deviceset="+5V" device=""/>
<part name="P-1" library="synkie" deviceset="-5V" device=""/>
<part name="GND1" library="synkie" deviceset="0V" device=""/>
<part name="C1" library="synkie" deviceset="CPOL-EU" device="CT3528"/>
<part name="C2" library="synkie" deviceset="CPOL-EU" device="CT3528"/>
<part name="U$1" library="synkie" deviceset="LT1228" device=""/>
<part name="P+2" library="synkie" deviceset="+5V" device=""/>
<part name="P-2" library="synkie" deviceset="-5V" device=""/>
<part name="GND2" library="synkie" deviceset="0V" device=""/>
<part name="GND3" library="synkie" deviceset="0V" device=""/>
<part name="C3" library="synkie" deviceset="CPOL-EU" device="CT3528" value="4u7"/>
<part name="C4" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="C5" library="synkie" deviceset="CPOL-EU" device="CT3528" value="4u7"/>
<part name="C6" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="R1" library="synkie" deviceset="R-EU_" device="R0805" value="300"/>
<part name="GND4" library="synkie" deviceset="0V" device=""/>
<part name="D1" library="synkie" deviceset="DIODE_2CACA-" device="SOT23"/>
<part name="R2" library="synkie" deviceset="R-EU_" device="R0805" value="100"/>
<part name="R3" library="synkie" deviceset="R-EU_" device="R0805" value="47k"/>
<part name="R4" library="synkie" deviceset="R-EU_" device="R0805" value="10k"/>
<part name="R5" library="synkie" deviceset="R-EU_" device="R0805" value="560"/>
<part name="R6" library="synkie" deviceset="R-EU_" device="R0805" value="1k"/>
<part name="IN" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="GND5" library="synkie" deviceset="0V" device=""/>
<part name="GND6" library="synkie" deviceset="0V" device=""/>
<part name="GND7" library="synkie" deviceset="0V" device=""/>
<part name="P+3" library="synkie" deviceset="+5V" device=""/>
<part name="P-3" library="synkie" deviceset="-5V" device=""/>
<part name="OUT" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="R7" library="synkie" deviceset="R-EU_" device="R0805" value="75"/>
<part name="R8" library="synkie" deviceset="R-EU_" device="R0805" value="1k"/>
<part name="R9" library="synkie" deviceset="R-EU_" device="R0805" value="68"/>
<part name="GND8" library="synkie" deviceset="0V" device=""/>
<part name="BIAS_IN" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="IC1" library="synkie" deviceset="DUAL_OPAMP" device="D"/>
<part name="P+4" library="synkie" deviceset="+5V" device=""/>
<part name="P-4" library="synkie" deviceset="-5V" device=""/>
<part name="GND9" library="synkie" deviceset="0V" device=""/>
<part name="C7" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="C8" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="D2" library="synkie" deviceset="DIODE_2CACA-" device="SOT23"/>
<part name="R10" library="synkie" deviceset="R-EU_" device="R0805" value="100"/>
<part name="R11" library="synkie" deviceset="R-EU_" device="R0805" value="4k7"/>
<part name="GND10" library="synkie" deviceset="0V" device=""/>
<part name="P+5" library="synkie" deviceset="+5V" device=""/>
<part name="P-5" library="synkie" deviceset="-5V" device=""/>
<part name="R12" library="synkie" deviceset="R-EU_" device="R0805" value="100k"/>
<part name="R13" library="synkie" deviceset="R-EU_" device="R0805" value="100k"/>
<part name="R14" library="synkie" deviceset="R-EU_" device="R1206" value="100k"/>
<part name="R15" library="synkie" deviceset="R-EU_" device="R0805" value="100k"/>
<part name="R16" library="synkie" deviceset="R-EU_" device="R0805" value="2k2"/>
<part name="GND11" library="synkie" deviceset="0V" device=""/>
<part name="C9" library="synkie" deviceset="C-EU" device="C0805" value="0"/>
<part name="R17" library="synkie" deviceset="R-EU_" device="R0805" value="1M"/>
<part name="R18" library="synkie" deviceset="R-EU_" device="R0805" value="1M"/>
<part name="R19" library="synkie" deviceset="R-EU_" device="R1206" value="1M"/>
<part name="R20" library="synkie" deviceset="R-EU_" device="R0805" value="1M"/>
<part name="R21" library="synkie" deviceset="R-EU_" device="R0805" value="2k2"/>
<part name="GND12" library="synkie" deviceset="0V" device=""/>
<part name="C10" library="synkie" deviceset="C-EU" device="C0805" value="50p"/>
<part name="R22" library="synkie" deviceset="R-EU_" device="R0805" value="20k"/>
<part name="R23" library="synkie" deviceset="R-EU_" device="R0805" value="20k"/>
<part name="R_BIAS" library="synkie" deviceset="ALPS_RK09K111_H" device="OHNE-FüSSE"/>
<part name="P+6" library="synkie" deviceset="+5V" device=""/>
<part name="P-6" library="synkie" deviceset="-5V" device=""/>
<part name="C11" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND13" library="synkie" deviceset="0V" device=""/>
<part name="SCALE_IN" library="synkie" deviceset="3,17/1,1" device=""/>
<part name="D3" library="synkie" deviceset="DIODE_2CACA-" device="SOT23"/>
<part name="R24" library="synkie" deviceset="R-EU_" device="R0805" value="100"/>
<part name="R25" library="synkie" deviceset="R-EU_" device="R0805" value="47k"/>
<part name="GND15" library="synkie" deviceset="0V" device=""/>
<part name="P+8" library="synkie" deviceset="+5V" device=""/>
<part name="P-8" library="synkie" deviceset="-5V" device=""/>
<part name="R28" library="synkie" deviceset="R-EU_" device="R0805" value="10k"/>
<part name="R29" library="synkie" deviceset="R-EU_" device="R0805" value="10k"/>
<part name="R_SCALE" library="synkie" deviceset="ALPS_RK09K111_H" device="OHNE-FüSSE"/>
<part name="P+9" library="synkie" deviceset="+5V" device=""/>
<part name="P-9" library="synkie" deviceset="-5V" device=""/>
<part name="C14" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="GND16" library="synkie" deviceset="0V" device=""/>
<part name="IC2" library="synkie" deviceset="DUAL_OPAMP" device="D"/>
<part name="C12" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="C13" library="synkie" deviceset="C-EU" device="C0805" value="100n"/>
<part name="P-7" library="synkie" deviceset="-5V" device=""/>
<part name="P+7" library="synkie" deviceset="+5V" device=""/>
<part name="GND14" library="synkie" deviceset="0V" device=""/>
<part name="R26" library="synkie" deviceset="R-EU_" device="R0805" value="100k"/>
<part name="R27" library="synkie" deviceset="R-EU_" device="R0805" value="100k"/>
<part name="R30" library="synkie" deviceset="R-EU_" device="R0805" value="4k7"/>
<part name="GND17" library="synkie" deviceset="0V" device=""/>
<part name="R31" library="synkie" deviceset="R-EU_" device="R0805" value="33k"/>
<part name="R32" library="synkie" deviceset="R-EU_" device="R0805" value="33k"/>
<part name="R33" library="synkie" deviceset="R-EU_" device="R0805" value="33k"/>
<part name="R34" library="synkie" deviceset="R-EU_" device="R0805" value="33k"/>
<part name="U$2" library="synkie" deviceset="TRANS_NPN_DUAL" device="" value="PEMX1"/>
<part name="GND18" library="synkie" deviceset="0V" device=""/>
<part name="R35" library="synkie" deviceset="R-EU_" device="R0805" value="1k"/>
<part name="C15" library="synkie" deviceset="C-EU" device="C0805" value="1p"/>
<part name="C16" library="synkie" deviceset="C-EU" device="C0805" value="0"/>
<part name="R36" library="synkie" deviceset="R-EU_" device="R0805" value="15k"/>
<part name="P+10" library="synkie" deviceset="+5V" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="X1" gate="_-5V" x="119.38" y="106.68" rot="R180"/>
<instance part="X1" gate="_GND" x="119.38" y="109.22" rot="R180"/>
<instance part="X1" gate="_+5V" x="119.38" y="111.76" rot="R180"/>
<instance part="P+1" gate="1" x="124.46" y="119.38"/>
<instance part="P-1" gate="1" x="124.46" y="99.06"/>
<instance part="GND1" gate="1" x="134.62" y="101.6"/>
<instance part="C1" gate="G$1" x="127" y="111.76" rot="R90"/>
<instance part="C2" gate="G$1" x="129.54" y="106.68" rot="MR90"/>
<instance part="U$1" gate="G$1" x="78.74" y="76.2"/>
<instance part="P+2" gate="1" x="127" y="86.36"/>
<instance part="P-2" gate="1" x="66.04" y="50.8"/>
<instance part="GND2" gate="1" x="139.7" y="71.12"/>
<instance part="GND3" gate="1" x="53.34" y="50.8"/>
<instance part="C3" gate="G$1" x="58.42" y="60.96" rot="R90"/>
<instance part="C4" gate="G$1" x="58.42" y="55.88" rot="R90"/>
<instance part="C5" gate="G$1" x="132.08" y="81.28" rot="R90"/>
<instance part="C6" gate="G$1" x="132.08" y="76.2" rot="R90"/>
<instance part="R1" gate="G$1" x="58.42" y="83.82"/>
<instance part="GND4" gate="1" x="50.8" y="78.74"/>
<instance part="D1" gate="-B1" x="15.24" y="83.82" rot="MR270"/>
<instance part="R2" gate="G$1" x="5.08" y="83.82" rot="R180"/>
<instance part="R3" gate="G$1" x="-2.54" y="76.2" rot="R270"/>
<instance part="R4" gate="G$1" x="25.4" y="76.2" rot="R270"/>
<instance part="R5" gate="G$1" x="38.1" y="60.96" rot="R90"/>
<instance part="R6" gate="G$1" x="25.4" y="60.96" rot="R90"/>
<instance part="IN" gate="1" x="-7.62" y="83.82"/>
<instance part="GND5" gate="1" x="-2.54" y="66.04"/>
<instance part="GND6" gate="1" x="25.4" y="50.8"/>
<instance part="GND7" gate="1" x="38.1" y="50.8"/>
<instance part="P+3" gate="1" x="15.24" y="91.44"/>
<instance part="P-3" gate="1" x="15.24" y="76.2"/>
<instance part="OUT" gate="1" x="170.18" y="68.58" rot="MR0"/>
<instance part="R7" gate="G$1" x="162.56" y="68.58" rot="R180"/>
<instance part="R8" gate="G$1" x="147.32" y="96.52" rot="R90"/>
<instance part="R9" gate="G$1" x="147.32" y="81.28" rot="R90"/>
<instance part="GND8" gate="1" x="147.32" y="71.12"/>
<instance part="BIAS_IN" gate="1" x="-27.94" y="175.26"/>
<instance part="IC1" gate="A" x="20.32" y="165.1"/>
<instance part="IC1" gate="B" x="20.32" y="121.92"/>
<instance part="IC1" gate="P" x="78.74" y="154.94"/>
<instance part="P+4" gate="1" x="78.74" y="170.18"/>
<instance part="P-4" gate="1" x="78.74" y="139.7"/>
<instance part="GND9" gate="1" x="93.98" y="139.7"/>
<instance part="C7" gate="G$1" x="83.82" y="165.1" rot="R90"/>
<instance part="C8" gate="G$1" x="83.82" y="144.78" rot="R90"/>
<instance part="D2" gate="-B1" x="-5.08" y="175.26" rot="MR270"/>
<instance part="R10" gate="G$1" x="-15.24" y="175.26" rot="R180"/>
<instance part="R11" gate="G$1" x="-22.86" y="167.64" rot="R270"/>
<instance part="GND10" gate="1" x="-22.86" y="157.48"/>
<instance part="P+5" gate="1" x="-5.08" y="182.88"/>
<instance part="P-5" gate="1" x="-5.08" y="167.64"/>
<instance part="R12" gate="G$1" x="2.54" y="175.26" rot="R180"/>
<instance part="R13" gate="G$1" x="20.32" y="175.26" rot="R180"/>
<instance part="R14" gate="G$1" x="2.54" y="149.86" rot="R180"/>
<instance part="R15" gate="G$1" x="20.32" y="149.86" rot="R180"/>
<instance part="R16" gate="G$1" x="38.1" y="165.1" rot="R180"/>
<instance part="GND11" gate="1" x="-5.08" y="144.78"/>
<instance part="C9" gate="G$1" x="17.78" y="154.94" rot="R90"/>
<instance part="R17" gate="G$1" x="2.54" y="132.08" rot="R180"/>
<instance part="R18" gate="G$1" x="20.32" y="132.08" rot="R180"/>
<instance part="R19" gate="G$1" x="2.54" y="106.68" rot="R180"/>
<instance part="R20" gate="G$1" x="20.32" y="106.68" rot="R180"/>
<instance part="R21" gate="G$1" x="38.1" y="121.92" rot="R180"/>
<instance part="GND12" gate="1" x="-5.08" y="101.6"/>
<instance part="C10" gate="G$1" x="17.78" y="111.76" rot="R90"/>
<instance part="R22" gate="G$1" x="-22.86" y="142.24" rot="R270"/>
<instance part="R23" gate="G$1" x="-22.86" y="121.92" rot="R270"/>
<instance part="R_BIAS" gate="G$1" x="-22.86" y="132.08"/>
<instance part="P+6" gate="1" x="-22.86" y="149.86"/>
<instance part="P-6" gate="1" x="-22.86" y="114.3"/>
<instance part="C11" gate="G$1" x="-12.7" y="124.46" rot="R180"/>
<instance part="GND13" gate="1" x="-12.7" y="114.3"/>
<instance part="SCALE_IN" gate="1" x="-12.7" y="-2.54"/>
<instance part="D3" gate="-B1" x="10.16" y="-2.54" rot="MR270"/>
<instance part="R24" gate="G$1" x="0" y="-2.54" rot="R180"/>
<instance part="R25" gate="G$1" x="-7.62" y="-7.62" rot="R270"/>
<instance part="GND15" gate="1" x="-7.62" y="-15.24"/>
<instance part="P+8" gate="1" x="10.16" y="5.08"/>
<instance part="P-8" gate="1" x="10.16" y="-10.16"/>
<instance part="R28" gate="G$1" x="-20.32" y="-15.24" rot="R270"/>
<instance part="R29" gate="G$1" x="-20.32" y="-35.56" rot="R270"/>
<instance part="R_SCALE" gate="G$1" x="-20.32" y="-25.4"/>
<instance part="P+9" gate="1" x="-20.32" y="-7.62"/>
<instance part="P-9" gate="1" x="-20.32" y="-43.18"/>
<instance part="C14" gate="G$1" x="-10.16" y="-33.02" rot="R180"/>
<instance part="GND16" gate="1" x="-10.16" y="-43.18"/>
<instance part="IC2" gate="B" x="40.64" y="0"/>
<instance part="IC2" gate="A" x="76.2" y="12.7"/>
<instance part="IC2" gate="P" x="134.62" y="5.08"/>
<instance part="C12" gate="G$1" x="139.7" y="-5.08" rot="MR270"/>
<instance part="C13" gate="G$1" x="139.7" y="15.24" rot="MR270"/>
<instance part="P-7" gate="1" x="134.62" y="-10.16"/>
<instance part="P+7" gate="1" x="134.62" y="20.32"/>
<instance part="GND14" gate="1" x="147.32" y="-10.16"/>
<instance part="R26" gate="G$1" x="20.32" y="-2.54"/>
<instance part="R27" gate="G$1" x="20.32" y="-25.4"/>
<instance part="R30" gate="G$1" x="40.64" y="-15.24"/>
<instance part="GND17" gate="1" x="30.48" y="0"/>
<instance part="R31" gate="G$1" x="58.42" y="0"/>
<instance part="R32" gate="G$1" x="78.74" y="0"/>
<instance part="R33" gate="G$1" x="58.42" y="25.4"/>
<instance part="R34" gate="G$1" x="78.74" y="25.4"/>
<instance part="U$2" gate="G$1" x="48.26" y="15.24"/>
<instance part="U$2" gate="G$2" x="93.98" y="15.24" rot="MR270"/>
<instance part="GND18" gate="1" x="50.8" y="7.62"/>
<instance part="R35" gate="G$1" x="109.22" y="12.7"/>
<instance part="C15" gate="G$1" x="76.2" y="-10.16" rot="R90"/>
<instance part="C16" gate="G$1" x="38.1" y="-25.4" rot="R90"/>
<instance part="R36" gate="G$1" x="50.8" y="33.02" rot="R90"/>
<instance part="P+10" gate="1" x="50.8" y="40.64"/>
</instances>
<busses>
</busses>
<nets>
<net name="+5V" class="0">
<segment>
<pinref part="X1" gate="_+5V" pin="S"/>
<pinref part="P+1" gate="1" pin="+5V"/>
<wire x1="121.92" y1="111.76" x2="124.46" y2="111.76" width="0.1524" layer="91"/>
<wire x1="124.46" y1="111.76" x2="124.46" y2="116.84" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="+"/>
<junction x="124.46" y="111.76"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="VCC"/>
<pinref part="P+2" gate="1" pin="+5V"/>
<wire x1="111.76" y1="76.2" x2="127" y2="76.2" width="0.1524" layer="91"/>
<wire x1="127" y1="76.2" x2="127" y2="81.28" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="1"/>
<wire x1="127" y1="81.28" x2="127" y2="83.82" width="0.1524" layer="91"/>
<wire x1="129.54" y1="76.2" x2="127" y2="76.2" width="0.1524" layer="91"/>
<junction x="127" y="76.2"/>
<pinref part="C5" gate="G$1" pin="+"/>
<wire x1="129.54" y1="81.28" x2="127" y2="81.28" width="0.1524" layer="91"/>
<junction x="127" y="81.28"/>
</segment>
<segment>
<pinref part="D1" gate="-B1" pin="C"/>
<pinref part="P+3" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="P+4" gate="1" pin="+5V"/>
<pinref part="IC1" gate="P" pin="V+"/>
<wire x1="78.74" y1="167.64" x2="78.74" y2="165.1" width="0.1524" layer="91"/>
<pinref part="C7" gate="G$1" pin="1"/>
<wire x1="78.74" y1="165.1" x2="78.74" y2="162.56" width="0.1524" layer="91"/>
<wire x1="81.28" y1="165.1" x2="78.74" y2="165.1" width="0.1524" layer="91"/>
<junction x="78.74" y="165.1"/>
</segment>
<segment>
<pinref part="D2" gate="-B1" pin="C"/>
<pinref part="P+5" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="R22" gate="G$1" pin="1"/>
<pinref part="P+6" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="D3" gate="-B1" pin="C"/>
<pinref part="P+8" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="R28" gate="G$1" pin="1"/>
<pinref part="P+9" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="P+7" gate="1" pin="+5V"/>
<pinref part="IC2" gate="P" pin="V+"/>
<wire x1="134.62" y1="17.78" x2="134.62" y2="15.24" width="0.1524" layer="91"/>
<pinref part="C13" gate="G$1" pin="1"/>
<wire x1="134.62" y1="15.24" x2="134.62" y2="12.7" width="0.1524" layer="91"/>
<wire x1="137.16" y1="15.24" x2="134.62" y2="15.24" width="0.1524" layer="91"/>
<junction x="134.62" y="15.24"/>
</segment>
<segment>
<pinref part="R36" gate="G$1" pin="2"/>
<pinref part="P+10" gate="1" pin="+5V"/>
</segment>
</net>
<net name="-5V" class="0">
<segment>
<pinref part="X1" gate="_-5V" pin="S"/>
<pinref part="P-1" gate="1" pin="-5V"/>
<wire x1="121.92" y1="106.68" x2="124.46" y2="106.68" width="0.1524" layer="91"/>
<wire x1="124.46" y1="106.68" x2="124.46" y2="101.6" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="-"/>
<junction x="124.46" y="106.68"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="VSS"/>
<pinref part="P-2" gate="1" pin="-5V"/>
<wire x1="68.58" y1="60.96" x2="66.04" y2="60.96" width="0.1524" layer="91"/>
<wire x1="66.04" y1="60.96" x2="66.04" y2="55.88" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="-"/>
<wire x1="66.04" y1="55.88" x2="66.04" y2="53.34" width="0.1524" layer="91"/>
<wire x1="63.5" y1="60.96" x2="66.04" y2="60.96" width="0.1524" layer="91"/>
<junction x="66.04" y="60.96"/>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="63.5" y1="55.88" x2="66.04" y2="55.88" width="0.1524" layer="91"/>
<junction x="66.04" y="55.88"/>
</segment>
<segment>
<pinref part="D1" gate="-B1" pin="A"/>
<pinref part="P-3" gate="1" pin="-5V"/>
</segment>
<segment>
<pinref part="IC1" gate="P" pin="V-"/>
<pinref part="P-4" gate="1" pin="-5V"/>
<wire x1="78.74" y1="147.32" x2="78.74" y2="144.78" width="0.1524" layer="91"/>
<pinref part="C8" gate="G$1" pin="1"/>
<wire x1="78.74" y1="144.78" x2="78.74" y2="142.24" width="0.1524" layer="91"/>
<wire x1="81.28" y1="144.78" x2="78.74" y2="144.78" width="0.1524" layer="91"/>
<junction x="78.74" y="144.78"/>
</segment>
<segment>
<pinref part="D2" gate="-B1" pin="A"/>
<pinref part="P-5" gate="1" pin="-5V"/>
</segment>
<segment>
<pinref part="R23" gate="G$1" pin="2"/>
<pinref part="P-6" gate="1" pin="-5V"/>
</segment>
<segment>
<pinref part="D3" gate="-B1" pin="A"/>
<pinref part="P-8" gate="1" pin="-5V"/>
</segment>
<segment>
<pinref part="R29" gate="G$1" pin="2"/>
<pinref part="P-9" gate="1" pin="-5V"/>
</segment>
<segment>
<pinref part="IC2" gate="P" pin="V-"/>
<pinref part="P-7" gate="1" pin="-5V"/>
<wire x1="134.62" y1="-2.54" x2="134.62" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="C12" gate="G$1" pin="1"/>
<wire x1="134.62" y1="-5.08" x2="134.62" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="137.16" y1="-5.08" x2="134.62" y2="-5.08" width="0.1524" layer="91"/>
<junction x="134.62" y="-5.08"/>
</segment>
</net>
<net name="0V" class="0">
<segment>
<pinref part="C1" gate="G$1" pin="-"/>
<pinref part="GND1" gate="1" pin="0V"/>
<wire x1="132.08" y1="111.76" x2="134.62" y2="111.76" width="0.1524" layer="91"/>
<wire x1="134.62" y1="111.76" x2="134.62" y2="109.22" width="0.1524" layer="91"/>
<pinref part="X1" gate="_GND" pin="S"/>
<wire x1="134.62" y1="109.22" x2="134.62" y2="106.68" width="0.1524" layer="91"/>
<wire x1="134.62" y1="106.68" x2="134.62" y2="104.14" width="0.1524" layer="91"/>
<wire x1="121.92" y1="109.22" x2="134.62" y2="109.22" width="0.1524" layer="91"/>
<junction x="134.62" y="109.22"/>
<pinref part="C2" gate="G$1" pin="+"/>
<wire x1="132.08" y1="106.68" x2="134.62" y2="106.68" width="0.1524" layer="91"/>
<junction x="134.62" y="106.68"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="+"/>
<pinref part="GND3" gate="1" pin="0V"/>
<wire x1="55.88" y1="60.96" x2="53.34" y2="60.96" width="0.1524" layer="91"/>
<wire x1="53.34" y1="60.96" x2="53.34" y2="55.88" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="53.34" y1="55.88" x2="53.34" y2="53.34" width="0.1524" layer="91"/>
<wire x1="55.88" y1="55.88" x2="53.34" y2="55.88" width="0.1524" layer="91"/>
<junction x="53.34" y="55.88"/>
</segment>
<segment>
<pinref part="C6" gate="G$1" pin="2"/>
<pinref part="GND2" gate="1" pin="0V"/>
<wire x1="137.16" y1="76.2" x2="139.7" y2="76.2" width="0.1524" layer="91"/>
<wire x1="139.7" y1="76.2" x2="139.7" y2="73.66" width="0.1524" layer="91"/>
<pinref part="C5" gate="G$1" pin="-"/>
<wire x1="137.16" y1="81.28" x2="139.7" y2="81.28" width="0.1524" layer="91"/>
<wire x1="139.7" y1="81.28" x2="139.7" y2="76.2" width="0.1524" layer="91"/>
<junction x="139.7" y="76.2"/>
</segment>
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="GND4" gate="1" pin="0V"/>
<wire x1="53.34" y1="83.82" x2="50.8" y2="83.82" width="0.1524" layer="91"/>
<wire x1="50.8" y1="83.82" x2="50.8" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="GND5" gate="1" pin="0V"/>
<wire x1="-2.54" y1="71.12" x2="-2.54" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R6" gate="G$1" pin="1"/>
<pinref part="GND6" gate="1" pin="0V"/>
<wire x1="25.4" y1="55.88" x2="25.4" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R5" gate="G$1" pin="1"/>
<pinref part="GND7" gate="1" pin="0V"/>
<wire x1="38.1" y1="55.88" x2="38.1" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R9" gate="G$1" pin="1"/>
<pinref part="GND8" gate="1" pin="0V"/>
<wire x1="147.32" y1="76.2" x2="147.32" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C7" gate="G$1" pin="2"/>
<pinref part="GND9" gate="1" pin="0V"/>
<wire x1="88.9" y1="165.1" x2="93.98" y2="165.1" width="0.1524" layer="91"/>
<wire x1="93.98" y1="165.1" x2="93.98" y2="144.78" width="0.1524" layer="91"/>
<pinref part="C8" gate="G$1" pin="2"/>
<wire x1="93.98" y1="144.78" x2="93.98" y2="142.24" width="0.1524" layer="91"/>
<wire x1="88.9" y1="144.78" x2="93.98" y2="144.78" width="0.1524" layer="91"/>
<junction x="93.98" y="144.78"/>
</segment>
<segment>
<pinref part="R11" gate="G$1" pin="2"/>
<pinref part="GND10" gate="1" pin="0V"/>
<wire x1="-22.86" y1="162.56" x2="-22.86" y2="160.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R14" gate="G$1" pin="2"/>
<pinref part="GND11" gate="1" pin="0V"/>
<wire x1="-2.54" y1="149.86" x2="-5.08" y2="149.86" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="149.86" x2="-5.08" y2="147.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R19" gate="G$1" pin="2"/>
<pinref part="GND12" gate="1" pin="0V"/>
<wire x1="-2.54" y1="106.68" x2="-5.08" y2="106.68" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="106.68" x2="-5.08" y2="104.14" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C11" gate="G$1" pin="1"/>
<pinref part="GND13" gate="1" pin="0V"/>
<wire x1="-12.7" y1="121.92" x2="-12.7" y2="116.84" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R25" gate="G$1" pin="2"/>
<pinref part="GND15" gate="1" pin="0V"/>
</segment>
<segment>
<pinref part="C14" gate="G$1" pin="1"/>
<pinref part="GND16" gate="1" pin="0V"/>
<wire x1="-10.16" y1="-35.56" x2="-10.16" y2="-40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C13" gate="G$1" pin="2"/>
<pinref part="GND14" gate="1" pin="0V"/>
<wire x1="144.78" y1="15.24" x2="147.32" y2="15.24" width="0.1524" layer="91"/>
<wire x1="147.32" y1="15.24" x2="147.32" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="C12" gate="G$1" pin="2"/>
<wire x1="147.32" y1="-5.08" x2="147.32" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="144.78" y1="-5.08" x2="147.32" y2="-5.08" width="0.1524" layer="91"/>
<junction x="147.32" y="-5.08"/>
</segment>
<segment>
<pinref part="IC2" gate="B" pin="+IN"/>
<pinref part="GND17" gate="1" pin="0V"/>
<wire x1="30.48" y1="2.54" x2="33.02" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="E"/>
<pinref part="GND18" gate="1" pin="0V"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IN" gate="1" pin="P"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="-5.08" y1="83.82" x2="-2.54" y2="83.82" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="83.82" x2="0" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="81.28" x2="-2.54" y2="83.82" width="0.1524" layer="91"/>
<junction x="-2.54" y="83.82"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<pinref part="D1" gate="-B1" pin="AC"/>
<wire x1="10.16" y1="83.82" x2="12.7" y2="83.82" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="25.4" y1="81.28" x2="25.4" y2="83.82" width="0.1524" layer="91"/>
<wire x1="25.4" y1="83.82" x2="12.7" y2="83.82" width="0.1524" layer="91"/>
<junction x="12.7" y="83.82"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="25.4" y1="71.12" x2="25.4" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="+IN"/>
<wire x1="25.4" y1="68.58" x2="25.4" y2="66.04" width="0.1524" layer="91"/>
<wire x1="68.58" y1="68.58" x2="25.4" y2="68.58" width="0.1524" layer="91"/>
<junction x="25.4" y="68.58"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="-IN"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="68.58" y1="76.2" x2="38.1" y2="76.2" width="0.1524" layer="91"/>
<wire x1="38.1" y1="76.2" x2="38.1" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="OUT" gate="1" pin="P"/>
<pinref part="R7" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VOUT"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="111.76" y1="68.58" x2="154.94" y2="68.58" width="0.1524" layer="91"/>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="154.94" y1="68.58" x2="157.48" y2="68.58" width="0.1524" layer="91"/>
<wire x1="147.32" y1="101.6" x2="154.94" y2="101.6" width="0.1524" layer="91"/>
<wire x1="154.94" y1="101.6" x2="154.94" y2="68.58" width="0.1524" layer="91"/>
<junction x="154.94" y="68.58"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="R8" gate="G$1" pin="1"/>
<pinref part="R9" gate="G$1" pin="2"/>
<wire x1="147.32" y1="91.44" x2="147.32" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GAIN"/>
<wire x1="147.32" y1="88.9" x2="147.32" y2="86.36" width="0.1524" layer="91"/>
<wire x1="147.32" y1="88.9" x2="111.76" y2="88.9" width="0.1524" layer="91"/>
<wire x1="111.76" y1="88.9" x2="111.76" y2="83.82" width="0.1524" layer="91"/>
<junction x="147.32" y="88.9"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="R10" gate="G$1" pin="2"/>
<wire x1="-25.4" y1="175.26" x2="-22.86" y2="175.26" width="0.1524" layer="91"/>
<pinref part="R11" gate="G$1" pin="1"/>
<wire x1="-22.86" y1="175.26" x2="-20.32" y2="175.26" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="172.72" x2="-22.86" y2="175.26" width="0.1524" layer="91"/>
<junction x="-22.86" y="175.26"/>
<pinref part="BIAS_IN" gate="1" pin="P"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="R10" gate="G$1" pin="1"/>
<pinref part="D2" gate="-B1" pin="AC"/>
<wire x1="-10.16" y1="175.26" x2="-7.62" y2="175.26" width="0.1524" layer="91"/>
<pinref part="R12" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="175.26" x2="-7.62" y2="175.26" width="0.1524" layer="91"/>
<junction x="-7.62" y="175.26"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="R12" gate="G$1" pin="1"/>
<pinref part="R13" gate="G$1" pin="2"/>
<wire x1="7.62" y1="175.26" x2="10.16" y2="175.26" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="+IN"/>
<wire x1="10.16" y1="175.26" x2="15.24" y2="175.26" width="0.1524" layer="91"/>
<wire x1="12.7" y1="167.64" x2="10.16" y2="167.64" width="0.1524" layer="91"/>
<wire x1="10.16" y1="167.64" x2="10.16" y2="175.26" width="0.1524" layer="91"/>
<junction x="10.16" y="175.26"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="R14" gate="G$1" pin="1"/>
<pinref part="R15" gate="G$1" pin="2"/>
<wire x1="7.62" y1="149.86" x2="10.16" y2="149.86" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="-IN"/>
<wire x1="10.16" y1="149.86" x2="15.24" y2="149.86" width="0.1524" layer="91"/>
<wire x1="12.7" y1="162.56" x2="10.16" y2="162.56" width="0.1524" layer="91"/>
<wire x1="10.16" y1="162.56" x2="10.16" y2="154.94" width="0.1524" layer="91"/>
<junction x="10.16" y="149.86"/>
<pinref part="C9" gate="G$1" pin="1"/>
<wire x1="10.16" y1="154.94" x2="10.16" y2="149.86" width="0.1524" layer="91"/>
<wire x1="15.24" y1="154.94" x2="10.16" y2="154.94" width="0.1524" layer="91"/>
<junction x="10.16" y="154.94"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="IC1" gate="A" pin="OUT"/>
<pinref part="R16" gate="G$1" pin="2"/>
<wire x1="27.94" y1="165.1" x2="30.48" y2="165.1" width="0.1524" layer="91"/>
<pinref part="R15" gate="G$1" pin="1"/>
<wire x1="30.48" y1="165.1" x2="33.02" y2="165.1" width="0.1524" layer="91"/>
<wire x1="25.4" y1="149.86" x2="30.48" y2="149.86" width="0.1524" layer="91"/>
<wire x1="30.48" y1="149.86" x2="30.48" y2="154.94" width="0.1524" layer="91"/>
<junction x="30.48" y="165.1"/>
<pinref part="C9" gate="G$1" pin="2"/>
<wire x1="30.48" y1="154.94" x2="30.48" y2="165.1" width="0.1524" layer="91"/>
<wire x1="22.86" y1="154.94" x2="30.48" y2="154.94" width="0.1524" layer="91"/>
<junction x="30.48" y="154.94"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="R21" gate="G$1" pin="1"/>
<wire x1="43.18" y1="121.92" x2="45.72" y2="121.92" width="0.1524" layer="91"/>
<pinref part="R18" gate="G$1" pin="1"/>
<wire x1="25.4" y1="132.08" x2="45.72" y2="132.08" width="0.1524" layer="91"/>
<wire x1="45.72" y1="132.08" x2="45.72" y2="121.92" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
<pinref part="U$1" gate="G$1" pin="I-OUT"/>
<wire x1="63.5" y1="83.82" x2="66.04" y2="83.82" width="0.1524" layer="91"/>
<pinref part="R16" gate="G$1" pin="1"/>
<wire x1="66.04" y1="83.82" x2="68.58" y2="83.82" width="0.1524" layer="91"/>
<wire x1="43.18" y1="165.1" x2="45.72" y2="165.1" width="0.1524" layer="91"/>
<wire x1="45.72" y1="165.1" x2="66.04" y2="165.1" width="0.1524" layer="91"/>
<wire x1="66.04" y1="165.1" x2="66.04" y2="121.92" width="0.1524" layer="91"/>
<junction x="66.04" y="83.82"/>
<pinref part="R13" gate="G$1" pin="1"/>
<wire x1="66.04" y1="121.92" x2="66.04" y2="83.82" width="0.1524" layer="91"/>
<wire x1="25.4" y1="175.26" x2="45.72" y2="175.26" width="0.1524" layer="91"/>
<wire x1="45.72" y1="175.26" x2="45.72" y2="165.1" width="0.1524" layer="91"/>
<junction x="45.72" y="165.1"/>
<wire x1="45.72" y1="121.92" x2="66.04" y2="121.92" width="0.1524" layer="91"/>
<junction x="45.72" y="121.92"/>
<junction x="66.04" y="121.92"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="R17" gate="G$1" pin="2"/>
<pinref part="R_BIAS" gate="G$1" pin="W"/>
<wire x1="-17.78" y1="132.08" x2="-12.7" y2="132.08" width="0.1524" layer="91"/>
<pinref part="C11" gate="G$1" pin="2"/>
<wire x1="-12.7" y1="132.08" x2="-2.54" y2="132.08" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="129.54" x2="-12.7" y2="132.08" width="0.1524" layer="91"/>
<junction x="-12.7" y="132.08"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="R17" gate="G$1" pin="1"/>
<pinref part="R18" gate="G$1" pin="2"/>
<wire x1="7.62" y1="132.08" x2="10.16" y2="132.08" width="0.1524" layer="91"/>
<wire x1="10.16" y1="132.08" x2="15.24" y2="132.08" width="0.1524" layer="91"/>
<wire x1="12.7" y1="124.46" x2="10.16" y2="124.46" width="0.1524" layer="91"/>
<wire x1="10.16" y1="124.46" x2="10.16" y2="132.08" width="0.1524" layer="91"/>
<junction x="10.16" y="132.08"/>
<pinref part="IC1" gate="B" pin="+IN"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="R19" gate="G$1" pin="1"/>
<pinref part="R20" gate="G$1" pin="2"/>
<wire x1="7.62" y1="106.68" x2="10.16" y2="106.68" width="0.1524" layer="91"/>
<wire x1="10.16" y1="106.68" x2="15.24" y2="106.68" width="0.1524" layer="91"/>
<wire x1="12.7" y1="119.38" x2="10.16" y2="119.38" width="0.1524" layer="91"/>
<wire x1="10.16" y1="119.38" x2="10.16" y2="111.76" width="0.1524" layer="91"/>
<junction x="10.16" y="106.68"/>
<pinref part="C10" gate="G$1" pin="1"/>
<wire x1="10.16" y1="111.76" x2="10.16" y2="106.68" width="0.1524" layer="91"/>
<wire x1="15.24" y1="111.76" x2="10.16" y2="111.76" width="0.1524" layer="91"/>
<junction x="10.16" y="111.76"/>
<pinref part="IC1" gate="B" pin="-IN"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="R21" gate="G$1" pin="2"/>
<wire x1="27.94" y1="121.92" x2="30.48" y2="121.92" width="0.1524" layer="91"/>
<pinref part="R20" gate="G$1" pin="1"/>
<wire x1="30.48" y1="121.92" x2="33.02" y2="121.92" width="0.1524" layer="91"/>
<wire x1="25.4" y1="106.68" x2="30.48" y2="106.68" width="0.1524" layer="91"/>
<wire x1="30.48" y1="106.68" x2="30.48" y2="111.76" width="0.1524" layer="91"/>
<junction x="30.48" y="121.92"/>
<pinref part="C10" gate="G$1" pin="2"/>
<wire x1="30.48" y1="111.76" x2="30.48" y2="121.92" width="0.1524" layer="91"/>
<wire x1="22.86" y1="111.76" x2="30.48" y2="111.76" width="0.1524" layer="91"/>
<junction x="30.48" y="111.76"/>
<pinref part="IC1" gate="B" pin="OUT"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="R23" gate="G$1" pin="1"/>
<pinref part="R_BIAS" gate="G$1" pin="S"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="R_BIAS" gate="G$1" pin="E"/>
<pinref part="R22" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="R24" gate="G$1" pin="2"/>
<wire x1="-10.16" y1="-2.54" x2="-7.62" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="R25" gate="G$1" pin="1"/>
<wire x1="-7.62" y1="-2.54" x2="-5.08" y2="-2.54" width="0.1524" layer="91"/>
<junction x="-7.62" y="-2.54"/>
<pinref part="SCALE_IN" gate="1" pin="P"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="R24" gate="G$1" pin="1"/>
<pinref part="D3" gate="-B1" pin="AC"/>
<wire x1="5.08" y1="-2.54" x2="7.62" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="R26" gate="G$1" pin="1"/>
<wire x1="7.62" y1="-2.54" x2="15.24" y2="-2.54" width="0.1524" layer="91"/>
<junction x="7.62" y="-2.54"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="R29" gate="G$1" pin="1"/>
<pinref part="R_SCALE" gate="G$1" pin="S"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="R_SCALE" gate="G$1" pin="E"/>
<pinref part="R28" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="R_SCALE" gate="G$1" pin="W"/>
<wire x1="-15.24" y1="-25.4" x2="-10.16" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="C14" gate="G$1" pin="2"/>
<wire x1="-10.16" y1="-27.94" x2="-10.16" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="R27" gate="G$1" pin="1"/>
<wire x1="-10.16" y1="-25.4" x2="15.24" y2="-25.4" width="0.1524" layer="91"/>
<junction x="-10.16" y="-25.4"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="ISET"/>
<pinref part="R35" gate="G$1" pin="2"/>
<wire x1="114.3" y1="12.7" x2="116.84" y2="12.7" width="0.1524" layer="91"/>
<wire x1="116.84" y1="12.7" x2="116.84" y2="60.96" width="0.1524" layer="91"/>
<wire x1="116.84" y1="60.96" x2="111.76" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="R30" gate="G$1" pin="1"/>
<pinref part="R26" gate="G$1" pin="2"/>
<pinref part="IC2" gate="B" pin="-IN"/>
<wire x1="30.48" y1="-15.24" x2="35.56" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-2.54" x2="30.48" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-2.54" x2="33.02" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-15.24" x2="30.48" y2="-2.54" width="0.1524" layer="91"/>
<junction x="30.48" y="-15.24"/>
<junction x="30.48" y="-2.54"/>
<pinref part="C16" gate="G$1" pin="1"/>
<wire x1="35.56" y1="-25.4" x2="30.48" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-25.4" x2="30.48" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="R27" gate="G$1" pin="2"/>
<wire x1="25.4" y1="-25.4" x2="30.48" y2="-25.4" width="0.1524" layer="91"/>
<junction x="30.48" y="-25.4"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="R30" gate="G$1" pin="2"/>
<wire x1="45.72" y1="-15.24" x2="50.8" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-15.24" x2="50.8" y2="0" width="0.1524" layer="91"/>
<pinref part="IC2" gate="B" pin="OUT"/>
<wire x1="50.8" y1="0" x2="48.26" y2="0" width="0.1524" layer="91"/>
<pinref part="R31" gate="G$1" pin="1"/>
<wire x1="50.8" y1="0" x2="53.34" y2="0" width="0.1524" layer="91"/>
<junction x="50.8" y="0"/>
<pinref part="C16" gate="G$1" pin="2"/>
<wire x1="43.18" y1="-25.4" x2="50.8" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-25.4" x2="50.8" y2="-15.24" width="0.1524" layer="91"/>
<junction x="50.8" y="-15.24"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="R31" gate="G$1" pin="2"/>
<pinref part="R32" gate="G$1" pin="1"/>
<wire x1="63.5" y1="0" x2="66.04" y2="0" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="-IN"/>
<wire x1="66.04" y1="0" x2="73.66" y2="0" width="0.1524" layer="91"/>
<wire x1="68.58" y1="10.16" x2="66.04" y2="10.16" width="0.1524" layer="91"/>
<wire x1="66.04" y1="10.16" x2="66.04" y2="0" width="0.1524" layer="91"/>
<junction x="66.04" y="0"/>
<pinref part="C15" gate="G$1" pin="1"/>
<wire x1="73.66" y1="-10.16" x2="66.04" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-10.16" x2="66.04" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="R32" gate="G$1" pin="2"/>
<wire x1="83.82" y1="0" x2="86.36" y2="0" width="0.1524" layer="91"/>
<wire x1="86.36" y1="0" x2="86.36" y2="12.7" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="OUT"/>
<wire x1="86.36" y1="12.7" x2="83.82" y2="12.7" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$2" pin="C"/>
<wire x1="86.36" y1="12.7" x2="88.9" y2="12.7" width="0.1524" layer="91"/>
<junction x="86.36" y="12.7"/>
<pinref part="U$2" gate="G$2" pin="B"/>
<wire x1="93.98" y1="17.78" x2="86.36" y2="17.78" width="0.1524" layer="91"/>
<wire x1="86.36" y1="17.78" x2="86.36" y2="12.7" width="0.1524" layer="91"/>
<pinref part="C15" gate="G$1" pin="2"/>
<wire x1="81.28" y1="-10.16" x2="86.36" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-10.16" x2="86.36" y2="0" width="0.1524" layer="91"/>
<junction x="86.36" y="0"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="R33" gate="G$1" pin="2"/>
<pinref part="R34" gate="G$1" pin="1"/>
<wire x1="63.5" y1="25.4" x2="66.04" y2="25.4" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="+IN"/>
<wire x1="66.04" y1="25.4" x2="73.66" y2="25.4" width="0.1524" layer="91"/>
<wire x1="68.58" y1="15.24" x2="66.04" y2="15.24" width="0.1524" layer="91"/>
<wire x1="66.04" y1="15.24" x2="66.04" y2="25.4" width="0.1524" layer="91"/>
<junction x="66.04" y="25.4"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="R33" gate="G$1" pin="1"/>
<pinref part="U$2" gate="G$1" pin="C"/>
<wire x1="53.34" y1="25.4" x2="50.8" y2="25.4" width="0.1524" layer="91"/>
<wire x1="50.8" y1="25.4" x2="50.8" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="B"/>
<wire x1="45.72" y1="15.24" x2="45.72" y2="20.32" width="0.1524" layer="91"/>
<wire x1="45.72" y1="20.32" x2="50.8" y2="20.32" width="0.1524" layer="91"/>
<junction x="50.8" y="20.32"/>
<pinref part="R36" gate="G$1" pin="1"/>
<wire x1="50.8" y1="27.94" x2="50.8" y2="25.4" width="0.1524" layer="91"/>
<junction x="50.8" y="25.4"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="R34" gate="G$1" pin="2"/>
<wire x1="83.82" y1="25.4" x2="101.6" y2="25.4" width="0.1524" layer="91"/>
<wire x1="101.6" y1="25.4" x2="101.6" y2="12.7" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$2" pin="E"/>
<wire x1="101.6" y1="12.7" x2="99.06" y2="12.7" width="0.1524" layer="91"/>
<pinref part="R35" gate="G$1" pin="1"/>
<wire x1="101.6" y1="12.7" x2="104.14" y2="12.7" width="0.1524" layer="91"/>
<junction x="101.6" y="12.7"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
