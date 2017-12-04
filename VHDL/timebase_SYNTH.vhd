
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of timebase is

   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ex210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component no310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component dfr11
      port( D, R, CK : in std_logic;  Q : out std_logic);
   end component;
   
   signal gfx_port, bulletspd_port, lanespd_port, score_port, count_28, 
      count_27, count_26, count_25, count_24, count_23, count_22, count_20, 
      count_18_port, count_17_port, count_16_port, count_15_port, count_14_port
      , count_13_port, count_12_port, count_11_port, count_10_port, count_8, 
      count_7, count_6, count_5, count_4, count_3, count_2, count_1, count_0, 
      new_count_29_port, new_count_28_port, new_count_27_port, 
      new_count_26_port, new_count_25_port, new_count_24_port, 
      new_count_23_port, new_count_22_port, new_count_21_port, 
      new_count_20_port, new_count_19_port, new_count_18_port, 
      new_count_17_port, new_count_16_port, new_count_15_port, 
      new_count_14_port, new_count_13_port, new_count_12_port, 
      new_count_11_port, new_count_10_port, new_count_9_port, new_count_8_port,
      new_count_7_port, new_count_6_port, new_count_5_port, new_count_4_port, 
      new_count_3_port, new_count_2_port, new_count_1_port, new_count_0_port, 
      add_25_n58, add_25_n57, add_25_n56, add_25_n55, add_25_n54, add_25_n53, 
      add_25_n52, add_25_n51, add_25_n50, add_25_n49, add_25_n48, add_25_n47, 
      add_25_n46, add_25_n45, add_25_n44, add_25_n43, add_25_n42, add_25_n41, 
      add_25_n40, add_25_n39, add_25_n38, add_25_n37, add_25_n36, add_25_n35, 
      add_25_n34, add_25_n33, add_25_n32, add_25_n31, add_25_n30, add_25_n29, 
      add_25_n28, add_25_n27, add_25_n26, add_25_n25, add_25_n24, add_25_n23, 
      add_25_n22, add_25_n21, add_25_n20, add_25_n19, add_25_n18, add_25_n17, 
      add_25_n16, add_25_n15, add_25_n14, add_25_n13, add_25_n12, add_25_n11, 
      add_25_n10 : std_logic;

begin
   gfx <= gfx_port;
   bulletspd <= bulletspd_port;
   lanespd <= lanespd_port;
   score <= score_port;
   
   count_reg_0_inst : dfr11 port map( D => new_count_0_port, R => res, CK => 
                           clk, Q => count_0);
   count_reg_1_inst : dfr11 port map( D => new_count_1_port, R => res, CK => 
                           clk, Q => count_1);
   count_reg_2_inst : dfr11 port map( D => new_count_2_port, R => res, CK => 
                           clk, Q => count_2);
   count_reg_3_inst : dfr11 port map( D => new_count_3_port, R => res, CK => 
                           clk, Q => count_3);
   count_reg_4_inst : dfr11 port map( D => new_count_4_port, R => res, CK => 
                           clk, Q => count_4);
   count_reg_5_inst : dfr11 port map( D => new_count_5_port, R => res, CK => 
                           clk, Q => count_5);
   count_reg_6_inst : dfr11 port map( D => new_count_6_port, R => res, CK => 
                           clk, Q => count_6);
   count_reg_7_inst : dfr11 port map( D => new_count_7_port, R => res, CK => 
                           clk, Q => count_7);
   count_reg_8_inst : dfr11 port map( D => new_count_8_port, R => res, CK => 
                           clk, Q => count_8);
   count_reg_9_inst : dfr11 port map( D => new_count_9_port, R => res, CK => 
                           clk, Q => gfx_port);
   count_reg_10_inst : dfr11 port map( D => new_count_10_port, R => res, CK => 
                           clk, Q => count_10_port);
   count_reg_11_inst : dfr11 port map( D => new_count_11_port, R => res, CK => 
                           clk, Q => count_11_port);
   count_reg_12_inst : dfr11 port map( D => new_count_12_port, R => res, CK => 
                           clk, Q => count_12_port);
   count_reg_13_inst : dfr11 port map( D => new_count_13_port, R => res, CK => 
                           clk, Q => count_13_port);
   count_reg_14_inst : dfr11 port map( D => new_count_14_port, R => res, CK => 
                           clk, Q => count_14_port);
   count_reg_15_inst : dfr11 port map( D => new_count_15_port, R => res, CK => 
                           clk, Q => count_15_port);
   count_reg_16_inst : dfr11 port map( D => new_count_16_port, R => res, CK => 
                           clk, Q => count_16_port);
   count_reg_17_inst : dfr11 port map( D => new_count_17_port, R => res, CK => 
                           clk, Q => count_17_port);
   count_reg_18_inst : dfr11 port map( D => new_count_18_port, R => res, CK => 
                           clk, Q => count_18_port);
   count_reg_19_inst : dfr11 port map( D => new_count_19_port, R => res, CK => 
                           clk, Q => bulletspd_port);
   count_reg_20_inst : dfr11 port map( D => new_count_20_port, R => res, CK => 
                           clk, Q => count_20);
   count_reg_21_inst : dfr11 port map( D => new_count_21_port, R => res, CK => 
                           clk, Q => lanespd_port);
   count_reg_22_inst : dfr11 port map( D => new_count_22_port, R => res, CK => 
                           clk, Q => count_22);
   count_reg_23_inst : dfr11 port map( D => new_count_23_port, R => res, CK => 
                           clk, Q => count_23);
   count_reg_24_inst : dfr11 port map( D => new_count_24_port, R => res, CK => 
                           clk, Q => count_24);
   count_reg_25_inst : dfr11 port map( D => new_count_25_port, R => res, CK => 
                           clk, Q => count_25);
   count_reg_26_inst : dfr11 port map( D => new_count_26_port, R => res, CK => 
                           clk, Q => count_26);
   count_reg_27_inst : dfr11 port map( D => new_count_27_port, R => res, CK => 
                           clk, Q => count_27);
   count_reg_28_inst : dfr11 port map( D => new_count_28_port, R => res, CK => 
                           clk, Q => count_28);
   count_reg_29_inst : dfr11 port map( D => new_count_29_port, R => res, CK => 
                           clk, Q => score_port);
   add_25_U79 : na310 port map( A => count_1, B => count_0, C => count_2, Y => 
                           add_25_n30);
   add_25_U78 : no310 port map( A => add_25_n10, B => add_25_n30, C => 
                           add_25_n11, Y => add_25_n28);
   add_25_U77 : na310 port map( A => count_5, B => add_25_n28, C => count_6, Y 
                           => add_25_n25);
   add_25_U76 : no310 port map( A => add_25_n12, B => add_25_n25, C => 
                           add_25_n13, Y => add_25_n23);
   add_25_U75 : na210 port map( A => add_25_n23, B => gfx_port, Y => add_25_n58
                           );
   add_25_U74 : ex210 port map( A => count_10_port, B => add_25_n58, Y => 
                           add_25_n57);
   add_25_U73 : na310 port map( A => add_25_n23, B => gfx_port, C => 
                           count_10_port, Y => add_25_n55);
   add_25_U72 : ex210 port map( A => add_25_n14, B => add_25_n55, Y => 
                           new_count_11_port);
   add_25_U71 : no210 port map( A => add_25_n55, B => add_25_n14, Y => 
                           add_25_n56);
   add_25_U70 : ex210 port map( A => count_12_port, B => add_25_n56, Y => 
                           new_count_12_port);
   add_25_U69 : no310 port map( A => add_25_n14, B => add_25_n55, C => 
                           add_25_n15, Y => add_25_n52);
   add_25_U68 : ex210 port map( A => count_13_port, B => add_25_n52, Y => 
                           new_count_13_port);
   add_25_U67 : na210 port map( A => count_13_port, B => add_25_n52, Y => 
                           add_25_n54);
   add_25_U66 : ex210 port map( A => count_14_port, B => add_25_n54, Y => 
                           add_25_n53);
   add_25_U65 : na310 port map( A => count_13_port, B => add_25_n52, C => 
                           count_14_port, Y => add_25_n50);
   add_25_U64 : ex210 port map( A => add_25_n16, B => add_25_n50, Y => 
                           new_count_15_port);
   add_25_U63 : no210 port map( A => add_25_n50, B => add_25_n16, Y => 
                           add_25_n51);
   add_25_U62 : ex210 port map( A => count_16_port, B => add_25_n51, Y => 
                           new_count_16_port);
   add_25_U61 : no310 port map( A => add_25_n16, B => add_25_n50, C => 
                           add_25_n17, Y => add_25_n47);
   add_25_U60 : ex210 port map( A => count_17_port, B => add_25_n47, Y => 
                           new_count_17_port);
   add_25_U59 : na210 port map( A => count_17_port, B => add_25_n47, Y => 
                           add_25_n49);
   add_25_U58 : ex210 port map( A => count_18_port, B => add_25_n49, Y => 
                           add_25_n48);
   add_25_U57 : na310 port map( A => count_17_port, B => add_25_n47, C => 
                           count_18_port, Y => add_25_n45);
   add_25_U56 : ex210 port map( A => add_25_n18, B => add_25_n45, Y => 
                           new_count_19_port);
   add_25_U55 : ex210 port map( A => count_1, B => count_0, Y => 
                           new_count_1_port);
   add_25_U54 : no210 port map( A => add_25_n45, B => add_25_n18, Y => 
                           add_25_n46);
   add_25_U53 : ex210 port map( A => count_20, B => add_25_n46, Y => 
                           new_count_20_port);
   add_25_U52 : no310 port map( A => add_25_n18, B => add_25_n45, C => 
                           add_25_n19, Y => add_25_n42);
   add_25_U51 : ex210 port map( A => lanespd_port, B => add_25_n42, Y => 
                           new_count_21_port);
   add_25_U50 : na210 port map( A => lanespd_port, B => add_25_n42, Y => 
                           add_25_n44);
   add_25_U49 : ex210 port map( A => count_22, B => add_25_n44, Y => add_25_n43
                           );
   add_25_U48 : na310 port map( A => lanespd_port, B => add_25_n42, C => 
                           count_22, Y => add_25_n40);
   add_25_U47 : ex210 port map( A => add_25_n20, B => add_25_n40, Y => 
                           new_count_23_port);
   add_25_U46 : no210 port map( A => add_25_n40, B => add_25_n20, Y => 
                           add_25_n41);
   add_25_U45 : ex210 port map( A => count_24, B => add_25_n41, Y => 
                           new_count_24_port);
   add_25_U44 : no310 port map( A => add_25_n20, B => add_25_n40, C => 
                           add_25_n21, Y => add_25_n37);
   add_25_U43 : ex210 port map( A => count_25, B => add_25_n37, Y => 
                           new_count_25_port);
   add_25_U42 : na210 port map( A => count_25, B => add_25_n37, Y => add_25_n39
                           );
   add_25_U41 : ex210 port map( A => count_26, B => add_25_n39, Y => add_25_n38
                           );
   add_25_U40 : na310 port map( A => count_25, B => add_25_n37, C => count_26, 
                           Y => add_25_n36);
   add_25_U39 : ex210 port map( A => add_25_n22, B => add_25_n36, Y => 
                           new_count_27_port);
   add_25_U38 : no210 port map( A => add_25_n22, B => add_25_n36, Y => 
                           add_25_n35);
   add_25_U37 : ex210 port map( A => count_28, B => add_25_n35, Y => 
                           new_count_28_port);
   add_25_U36 : na210 port map( A => add_25_n35, B => count_28, Y => add_25_n34
                           );
   add_25_U35 : ex210 port map( A => score_port, B => add_25_n34, Y => 
                           add_25_n33);
   add_25_U34 : na210 port map( A => count_1, B => count_0, Y => add_25_n32);
   add_25_U33 : ex210 port map( A => count_2, B => add_25_n32, Y => add_25_n31)
                           ;
   add_25_U32 : ex210 port map( A => add_25_n10, B => add_25_n30, Y => 
                           new_count_3_port);
   add_25_U31 : no210 port map( A => add_25_n30, B => add_25_n10, Y => 
                           add_25_n29);
   add_25_U30 : ex210 port map( A => count_4, B => add_25_n29, Y => 
                           new_count_4_port);
   add_25_U29 : ex210 port map( A => count_5, B => add_25_n28, Y => 
                           new_count_5_port);
   add_25_U28 : na210 port map( A => count_5, B => add_25_n28, Y => add_25_n27)
                           ;
   add_25_U27 : ex210 port map( A => count_6, B => add_25_n27, Y => add_25_n26)
                           ;
   add_25_U26 : ex210 port map( A => add_25_n12, B => add_25_n25, Y => 
                           new_count_7_port);
   add_25_U25 : no210 port map( A => add_25_n25, B => add_25_n12, Y => 
                           add_25_n24);
   add_25_U24 : ex210 port map( A => count_8, B => add_25_n24, Y => 
                           new_count_8_port);
   add_25_U23 : ex210 port map( A => gfx_port, B => add_25_n23, Y => 
                           new_count_9_port);
   add_25_U22 : iv110 port map( A => count_27, Y => add_25_n22);
   add_25_U21 : iv110 port map( A => count_24, Y => add_25_n21);
   add_25_U20 : iv110 port map( A => count_23, Y => add_25_n20);
   add_25_U19 : iv110 port map( A => count_20, Y => add_25_n19);
   add_25_U18 : iv110 port map( A => bulletspd_port, Y => add_25_n18);
   add_25_U17 : iv110 port map( A => count_16_port, Y => add_25_n17);
   add_25_U16 : iv110 port map( A => count_15_port, Y => add_25_n16);
   add_25_U15 : iv110 port map( A => count_12_port, Y => add_25_n15);
   add_25_U14 : iv110 port map( A => count_11_port, Y => add_25_n14);
   add_25_U13 : iv110 port map( A => count_8, Y => add_25_n13);
   add_25_U12 : iv110 port map( A => count_7, Y => add_25_n12);
   add_25_U11 : iv110 port map( A => count_4, Y => add_25_n11);
   add_25_U10 : iv110 port map( A => count_3, Y => add_25_n10);
   add_25_U9 : iv110 port map( A => count_0, Y => new_count_0_port);
   add_25_U8 : iv110 port map( A => add_25_n26, Y => new_count_6_port);
   add_25_U7 : iv110 port map( A => add_25_n33, Y => new_count_29_port);
   add_25_U6 : iv110 port map( A => add_25_n38, Y => new_count_26_port);
   add_25_U5 : iv110 port map( A => add_25_n43, Y => new_count_22_port);
   add_25_U4 : iv110 port map( A => add_25_n48, Y => new_count_18_port);
   add_25_U3 : iv110 port map( A => add_25_n53, Y => new_count_14_port);
   add_25_U2 : iv110 port map( A => add_25_n57, Y => new_count_10_port);
   add_25_U1 : iv110 port map( A => add_25_n31, Y => new_count_2_port);

end synthesised;



