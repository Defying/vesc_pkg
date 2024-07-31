@const-symbol-strings(def e -1)(def ea -1)(def bk -1)(def ba -1)(def cr -1)(def bq -1)(def cm -1)(def bb -1)(def hy -1)(def fs -1)(def cp -1)(def gj -1)(def hz -1)(def fe -1)(def k -1)(def dx 1)(def da'())(def fh'())(def bn'())(def cg 0)(def j -1)(def bc'())(def el 31)(def ec(systime))(def er(systime))(def dd(systime))(def dk(systime))(def ht'(0xFF0000u32 0xFFFF00u32 0x00FF00u32 0x00FFFFu32 0x0000FFu32 0xFF00FFu32))(def gd'(0x00FFFF00 0x0000FF00 0x0000FFFF 0x000000FF 0x00FF00FF 0x00FF0000))(def hj 101)(def bi 102)(def gt'((bu . 0)(dn . 10)(cs . 24)(ig . 29)(ah . 202)))(def bp 0)(def bd 0)(def bo 0)(def fw 0)(def di 1)(def hk 0)(def gk 0)(def hi 0)(def ar [0 0 0 0 1 2 3 4 5 7 8 11 14 16 18 19 25 30 33 37 43 48 53 60 67 71 76 82 92 97 100])(def r 422i32)(def gl'((fl .(0 i r -1))(crc .(1 i 60967 -1))(fx .(2 i -1 -1))(gv .(3 b 1 -1))(en .(4 b 1 -1))(gz .(5 i 0 -1))(ds .(6 i 5 -1))(ad .(7 i 0 -1))(s .(8 i 5 -1))(eo .(9 b 1 -1))(dp .(10 b 1 -1))(hg .(11 f -4.0 -1))(bm .(12 i 30 -1))(ef .(13 i 120 -1))(ha .(14 f 0.5 -1))(p .(15 f 0.5 -1))(aq .(16 f 0.2 -1))(az .(17 f 0.5 -1))(ai .(18 i -1 -1))(z .(19 i 10 -1))(gx .(20 i 2 -1))(ie .(21 b 0 -1))(ep .(22 i 18 -1))(hp .(23 i 13 -1))(fu .(24 i 2 -1))(bz .(25 b 0 -1))(dg .(26 b 1 -1))(gf .(27 i 17 -1))(ei .(28 i 13 -1))(fd .(29 i 2 -1))(ev .(30 b 0 -1))(cz .(31 b 1 -1))(hc .(32 i -1 -1))(n .(33 i -1 -1))(w .(34 i 1 -1))(af .(35 i -1 -1))(ez .(36 i -1 -1))(es .(37 i -1 -1))(ic .(38 i -1 -1))(cv .(39 i -1 -1))(eh .(40 i -1 -1))(et .(41 i -1 -1))))@const-start(defun de(bl){(var gh(length bl))(var ch(floor(/ gh 4.0)))(var cd(floor(* gh 3(/ 1 4.0))))(looprange i 0 gh {(if(and(>= i ch)(< i cd)){(if(or(= i ch)(= i(- cd 1))){(setix bl i 0x007F0000)} {(setix bl i 0x00FF0000)})} {(setix bl i 0x00000000)})})})(defun fo(){(setq bp(mod(+ bp 1)2))(var bt(if(= bp 0)0xFFFFFFFF 0x00000000))(gm fh bt)(gm bn bt)})(defun dy(){(setq bd(mod(+ bd 1)2))(gm bn(if(= bd 0)0x00FF0000 0x00000000))})(defun fz(hs){(var ho(ix gd bo))(gm fh(if(= hs 0)ho 0xFF000000))(gm bn ho)(setq bo(mod(+ bo 1)6))})(defun max(ex b)(if(> ex b)ex b))(defun min(ex b)(if(< ex b)ex b))(defun v(){(var bj(+(length fh)(length bn)))(looprange i 0 bj {(var ia(abs(- i fw)))(var dj(max 0(- 255(* ia 51))))(var bt(color-make dj 0 0))(if(< i(length fh))(setix fh i bt)(setix bn(- i(length fh))bt))})(setq fw(+ fw di))(if(or(>= fw bj)(< fw 0))(setq di(* di -1)))})(defun cq(ae){(var gh(length ae))(var an(floor(* gh cg)))(looprange hm 0 gh {(var h 0)(var cw 0)(if(or(< hm an)(and(= hm 0)(<= an 1))){(if(or(< cg 0.2)(and(= hm 0)(<= an 1))){(setq h 255)(setq cw 0)} {(setq h(floor(* 255(- 1(/ cg 0.8)))))(setq cw(floor(* 255(/ cg 0.8))))})} {(setq h 0)(setq cw 0)})(var bt 0x00)(setq bt(bits-enc-int bt 16 h 8))(setq bt(bits-enc-int bt 8 cw 8))(setix ae hm bt)})})(defun bh(){(var au(length ht))(looprange hm 0(length fh){(var aj(mod(+ hk hm(length fh))au))(var bt(ix ht aj))(setix fh hm bt)})(looprange hm 0(length bn){(var aj(mod(+ hk hm(length bn))au))(var bt(ix ht aj))(setix bn hm bt)})(setq hk(mod(+ hk 1)au))})(defun by(){(var cb(mod gk 3))(var hp(length fh))(var ei(length bn))(var al(floor(/ hp 2)))(var o(floor(/ ei 2)))(cond((= cb 0){(looprange i 0 al(setix fh i 0x00000000))(looprange i al hp(setix fh i 0x00FF0000))(looprange i 0 o(setix bn i 0x00000000))(looprange i o ei(setix bn i 0x00FF0000))})((= cb 1){(looprange i 0 al(setix fh i 0x00FF0000))(looprange i al hp(setix fh i 0x000000FF))(looprange i 0 o(setix bn i 0x00FF0000))(looprange i o ei(setix bn i 0x000000FF))})((= cb 2){(looprange i 0 al(setix fh i 0x000000FF))(looprange i al hp(setix fh i 0x00000000))(looprange i 0 o(setix bn i 0x000000FF))(looprange i o ei(setix bn i 0x00000000))}))(setq gk(mod(+ gk 1)3))})(defun co(){(if(> bq 250.0){(ib)}{(if(and(!= cr 1)(!= cr 2)(!= cr 3)){(cq da)}{(m cr)})})})(defun ib(){(var z(length da))(var du(*(abs fs)1.1112))(var hn 0.0)(if(< du 1.0){(setq hn du)} {(setq hn 1.0)})(var gn(floor(* hn z)))(var ag 0x00FFFF00u32)(if(>(abs fs)0.85){(setq ag 0x00FF0000u32)} {(if(>(abs fs)0.7){(setq ag 0x00FF8800u32)})})(looprange hm 0 z {(setix da hm(if(< hm gn)ag 0x00000000u32))})})(defun m(cr){(var z(length da))(var df(if(or(= cr 1)(= cr 3))0xFF 0x00))(var ca(if(or(= cr 2)(= cr 3))0xFF 0x00))(looprange hm 0 z {(setix da hm(if(< hm(/ z 2))df ca))})})(defun gm(bl bt){(looprange hm 0(length bl){(setix bl hm bt)})})(defun hl(){(gm da 0x00)(gm fh 0x00)(gm bn 0x00)})(defun ft(ae){(looprange hm 0(length ae){(var bt(color-split(ix ae hm)1))(var fv(color-make(ix bt 1)(ix bt 0)(ix bt 2)(ix bt 3)))(setix ae hm fv)})})(defun bx(hv){(if(=(g'ie)1){(setq da(reverse da))})(if(=(g'bz)1){(setq fh(reverse fh))})(if(=(g'ev)1){(setq bn(reverse bn))})(var en(g'en))(var p(g'p))(var ai(g'ai))(var ep(g'ep))(var gf(g'gf))(var dg(g'dg))(var cz(g'cz))(var ak(if(and(>= hv 0)(!= en 0))(to-i(* 0xFF p))0x00))(var he(if(and(< hv 0)(!= en 0))(to-i(* 0xFF p))0x00))(if(or(= dg 2)(= dg 3)){(setq fh(append(list ak)fh))})(if(or(= cz 2)(= cz 3)){(setq bn(append(list he)bn))})(if(or(= dg 4)(= dg 5)){(var ff(take fh(length fh)))(setq fh(gy(+(length fh)4)0))(var hd 0)(looprange ao 0(length fh){(if(or(and(= dg 4)(or(= ao 2)(= ao 7)(= ao 13)(= ao 18)))(and(= dg 5)(or(= ao 1)(= ao 5)(= ao 10)(= ao 3)))){(setix fh ao ak)}{(setix fh ao(ix ff hd))(setq hd(+ hd 1))})})})(if(or(= cz 4)(= cz 5)){(var ff(take bn(length bn)))(setq bn(gy(+(length bn)4)0))(var hd 0)(looprange ao 0(length bn){(if(or(and(= cz 4)(or(= ao 2)(= ao 7)(= ao 13)(= ao 18)))(and(= cz 5)(or(= ao 1)(= ao 5)(= ao 10)(= ao 3)))){(setix bn ao he)}{(setix bn ao(ix ff hd))(setq hd(+ hd 1))})})})(var gx(g'gx))(var fu(g'fu))(var fd(g'fd))(var hp(length fh))(var ei(length bn))(if(and(>= ep 0)(= ai ep)(= ep gf)){(var u(append da fh bn))(var bj(length u))(var am(rgbled-buffer bj gx))(rgbled-color am 0 u dx)(if(not-eq(first(trap(rgbled-init ep fu)))'exit-ok){(hq'ep -1)(a"Invalid Pin")(dw'ep -1)(dw'crc(ga))}{(aa 0.01)(rgbled-update eu)(aa 0.01)})(free am)} {(if(and(>= ep 0)(= ep gf)){(var u(append fh bn))(var bj(length u))(var am(rgbled-buffer bj fu))(rgbled-color am 0 u dx)(if(not-eq(first(trap(rgbled-init ep fu)))'exit-ok){(hq'ep -1)(a"Invalid Pin")(dw'ep -1)(dw'crc(ga))}{(aa 0.01)(rgbled-update eu)(aa 0.01)})(free am)}{(if(and(>= ai 0)(= ai gf)){(if(!= gx fd)(ft da))(var u(append da bn))(var bj(length u))(var am(rgbled-buffer bj fd))(rgbled-color am 0 u dx)(if(not-eq(first(trap(rgbled-init ai gx)))'exit-ok){(hq'ai -1)(a"Invalid Pin")(dw'ai -1)(dw'crc(ga))}{(aa 0.01)(rgbled-update ej)(aa 0.01)})(free am)}{(if(>= ai 0){(var ej(rgbled-buffer(length da)gx))(rgbled-color ej 0 da(g'az))(if(not-eq(first(trap(rgbled-init ai gx)))'exit-ok){(hq'ai -1)(a"Invalid Pin")(dw'ai -1)(dw'crc(ga))}{(aa 0.01)(rgbled-update ej)(aa 0.01)})(free ej)})(if(>= gf 0){(var cf(rgbled-buffer ei gx))(rgbled-color cf 0 bn dx)(if(not-eq(first(trap(rgbled-init gf fd)))'exit-ok){(hq'gf -1)(a"Invalid Pin")(dw'gf -1)(dw'crc(ga))}{(aa 0.01)(rgbled-update cf)(aa 0.01)})(free cf)})})(if(>= ep 0){(var eu(rgbled-buffer hp gx))(rgbled-color eu 0 fh dx)(if(not-eq(first(trap(rgbled-init ep fu)))'exit-ok){(hq'ep -1)(a"Invalid Pin")(dw'ep -1)(dw'crc(ga))}{(aa 0.01)(rgbled-update eu)(aa 0.01)})(free eu)})})})})(defunret gs(){(var cx'())(var ee(g'fx))(hq'fx -1)(var gq(systime))(loopwhile-thd 150(<=(secs-since gq)10){(if(and(>= ee 0)(<=(secs-since gq)5)){(setq cx(list ee))}{(setq cx(can-scan))})(loopforeach fx cx {(setq j fx)(ab fx(list(assoc gt'bu)))(aa 0.5)(if(>=(g'fx)0){(if(not-eq(g'fx)ee){(dw'fx(g'fx))(dw'crc(ga))})(return 1)})})})(return 0)})(defun ab(fx ct){(send-data(append(list hj)ct)2 fx)})(defun status (){(var eg"status ")(setq eg(str-merge eg(str-from-n(if(<(secs-since dk)1)1 0)"%d ")))(setq eg(str-merge eg(str-from-n(if(<(secs-since ec)1)1 0)"%d ")))(setq eg(str-merge eg(str-from-n(if(<(secs-since er)1)1 0)"%d ")))(send-data eg)})(defun gb(){(var hc(g'hc))(var n(g'n))(uart-stop)(if(>= n 0){(if(not-eq(first(trap(gpio-configure n'pin-mode-out)))'exit-ok){(hq'n -1)(a"Invalid Pin")(dw'n -1)(dw'crc(ga))})})(if(>= hc 0){(if(not-eq(first(trap(gpio-configure hc'pin-mode-in-pu)))'exit-ok){(hq'hc -1)(a"Invalid Pin")(dw'hc -1)(dw'crc(ga))}{(uart-start 1 hc -1 115200)(set-bms-val'bms-cell-num 15)(set-bms-val'bms-temp-adc-num 4)(set-bms-val'bms-temp-cell-max 45)})})})(defunret g(dh){(var ax(assoc gl dh))(if ax(return(car(cdr(cdr(cdr ax)))))(return nil))})(defun save-config(){(loopforeach fa gl {(var dh(first fa))(if(eq dh'crc){(dw dh(ga))}{(dw dh(g dh))})})(send-data"Settings Saved!")})(defunret ga(){(var i 0)(var fy(-(length gl)1))(var fq(bufcreate fy))(loopforeach fa gl {(var dh(first fa))(if(not-eq dh'crc){(bufset-i32 fq i(g dh))(+ i 1)})})(var crc(crc16 fq))(free fq)(return crc)})(defun ap(){(loopforeach fa gl {(var dh(first fa))(var bg(ge dh))(hq dh bg)})})(defun restore-config(){(loopforeach fa gl {(var dh(first fa))(var ac(if(eq dh'fl)r(ix fa 3)))(dw dh ac)})(ap)(send-data"Settings Restored!")})(defun ge(dh)(let((fc(first(assoc gl dh)))(hs(second(assoc gl dh))))(cond((eq hs'i)(eeprom-read-i fc))((eq hs'f)(eeprom-read-f fc))((eq hs'b)(eeprom-read-i fc)))))(defun dw(dh bg)(let((fc(first(assoc gl dh)))(hs(second(assoc gl dh))))(cond((eq hs'i)(eeprom-store-i fc bg))((eq hs'f)(eeprom-store-f fc bg))((eq hs'b)(eeprom-store-i fc bg)))))(defun a(hw)(send-data(str-merge"msg "hw)))(defun gy(ey bg)(map(fn(x)bg)(range ey)))(defun dz(){(if(!=(str-cmp(to-str(sysinfo'hw-type))"hw-express")0){(exit-error"em running on hw-express")})(var eb(+(first(sysinfo'fw-ver))(*(second(sysinfo'fw-ver))0.01)))(if(< eb 6.05)(exit-error"hw-express av fb hx running 6.05"))(if(not-eq(ge'fl)r)(restore-config)(ap))(if(!=(ga)(to-i(ge'crc))){(a"Error: crc corrupt")(restore-config)})(spawn c)(event-register-handler(spawn ek))(event-enable'event-data-rx)(spawn gs)(if(=(conf-get'wifi-mode)0){(a"WiFi is disabled. Please enable and reboot.")}{(event-enable'event-esp-now-rx)(setq bc(list(g'af)(g'ez)(g'es)(g'ic)(g'cv)(g'eh)))(ed bc)(spawn bs)})(gb)(spawn db)})(defun recv-config(gv en gz ds ad s eo dp hg bm ef ha p aq az ai z gx ie ep hp fu bz dg gf ei fd ev cz hc n w){(hq'gv(to-i gv))(hq'en(to-i en))(hq'gz(to-i gz))(hq'ds(to-i ds))(hq'ad(to-i ad))(hq's(to-i s))(hq'eo(to-i eo))(hq'dp(to-i dp))(hq'hg(to-float hg))(hq'bm(to-i bm))(hq'ef(to-i ef))(hq'ha(to-float ha))(hq'p(to-float p))(hq'aq(to-float aq))(hq'az(to-float az))(hq'ai(to-i ai))(hq'z(to-i z))(hq'gx(to-i gx))(hq'ie(to-i ie))(hq'ep(to-i ep))(hq'hp(to-i hp))(hq'fu(to-i fu))(hq'bz(to-i bz))(hq'dg(to-i dg))(hq'gf(to-i gf))(hq'ei(to-i ei))(hq'fd(to-i fd))(hq'ev(to-i ev))(hq'cz(to-i cz))(var y(g'hc))(hq'hc(to-i hc))(var dl(g'n))(hq'n(to-i n))(hq'w(to-i w))(if(or(!=(to-i hc)y)(!=(to-i n)dl)){(gb)})})(defun hf(cc)(let((l(max 0(min(- cc 2700)(- 1500 1)))))(let((i(* l(/ 30.0 1500))))(let((ck(floor i)))(let((f(- i ck)))(let((ex(bufget-u8 ar ck))(b(bufget-u8 ar(+ ck 1))))(max 0(min(round(+ ex(* f(- b ex))))100))))))))(defun fj(gr){(print"gi")(atomic {(if(and(>(buflen gr)1)(=(bufget-u8 gr 0)bi)){(bufcpy gr 0 gr 1(-(buflen gr)1))(eval(read gr))})})(if(and(>(buflen gr)1)(=(bufget-u8 gr 0)hj)){(setq dk(systime))(match(cossa gt(bufget-u8 gr 1))(bu {(hq'fx j)})(ah {(var gg(bufget-u8 gr 2))(hq'gv(bits-dec-int gg 0 1))(hq'en(bits-dec-int gg 1 1))})(cs {(setq ba(bufget-u8 gr 2))(setq e(bufget-u8 gr 3))(if(= ba 3){(setq ea 0.0)(setq fs(bufget-u8 gr 4))}{(setq ea(to-float(bufget-i8 gr 4)))(setq fs 0.0)})(setq bq(/(to-float(bufget-i16 gr 5))10))(setq hy(/(to-float(bufget-i16 gr 7))10))(setq cm(/(to-float(bufget-i16 gr 9))10))(hq'ha(/(bufget-u8 gr 11)100.0))(hq'aq(/(bufget-u8 gr 12)100.0))(hq'az(/(bufget-u8 gr 13)100.0))})(ig {(setq cg(/(bufget-u8 gr 2)100.0))})(dn {(var ew(bufget-u8 gr 2))(if(= ew 69){(setq e(bufget-u8 gr 3))} {(setq ea(/(to-float(bufget-i16 gr 5))10))(setq bk(/(to-float(bufget-i16 gr 7))10))(setq ba(bufget-u8 gr 9))(setq cr(bufget-u8 gr 10))(setq cm(/(to-float(bufget-i16 gr 22))10))(setq bq(to-float(bufget-i16 gr 24)))(setq bb(/(to-float(bufget-i16 gr 26))10))(setq hy(/(to-float(bufget-i16 gr 28))10))(setq fs(-(/(bufget-u8 gr 30)100.0)0.5))(if(>= ew 2){(setq cp(bufget-f32 gr 34))(setq gj(/(bufget-u8 gr 38)2.0))(setq hz(/(bufget-u8 gr 39)2.0))})(if(>= ew 3){(setq fe(bufget-u32 gr 41))(setq k(/(bufget-u8 gr 53)2.0))})})})(_ nil))})(free gr)})(defun c(){(var hv 0)(var dq 0)(var fk(secs-since 0))(var aw 0)(var cn 0)(loopwhile-thd 100 t {(setq aw(secs-since 0))(var fx(g'fx))(ab fx(append(list(assoc gt'cs))'(102 108 111 97 116 45 97 99 99 101 115 115 111 114 105 101 115 49 46 48 0)))(ab fx(list(assoc gt'ah)))(ab fx(list(assoc gt'ig)))(if(=(g'gv)1){(setq da(gy(g'z)0))(setq fh(gy(g'hp)0))(setq bn(gy(g'ei)0))(setq hv 0)(var dm 10)(if(= ba 4)(setq dm(*dm -1)))(if(> bq dm){(setq hv 1)})(if(< bq(* dm -1)){(setq hv -1)})(if(=(g'eo)1){(if(> ea 70)(setq dq 1)(setq dq 0))})(hb(secs-since dd)hv dq)(if(or(!= hv 0)(= dq 1)){(setq dd(systime))})} {(hl)})(bx hv)(setq fk(+ fk 0.1))(var be(- fk(secs-since 0)))(if(> be 0){(aa be)(setq fk(secs-since 0))})})})(defun send-config(){(var ci"settings ")(loopforeach fa gl {(let((dh(first fa))(hs(third fa))){(var value(ge dh))(setq ci(str-merge ci(cond((eq hs'b)(str-from-n value"%d "))((eq hs'i)(str-from-n value"%d "))((eq hs'f)(str-from-n value"%.2f ")))))})})(send-data ci)(send-data"Settings Read!")})(defun ed(gp){(esp-now-start)(esp-now-del-peer bc)(esp-now-add-peer bc)})(defun pair-pubmote(q){(if(=(conf-get'wifi-mode)0){(a"WiFi is disabled. Please enable and reboot.")}{(cond((>= q 0){(hq'et q)(setq el(systime))(setq hi 1)})((= q -1){(ed bc)(dw'af(ix bc 0))(dw'ez(ix bc 1))(dw'es(ix bc 2))(dw'ic(ix bc 3))(dw'cv(ix bc 4))(dw'eh(ix bc 5))(dw'et et)(dw'crc(ga))(setq hi 0)})((= q -2){(setq bc'())(dw'af -1)(dw'crc(ga))(setq hi 0)}))})})(defun bs(){(var fk(secs-since 0))(var aw 0)(var cn 0)(loopwhile-thd 100 t {(setq aw(secs-since 0))(if(and(>(secs-since el)30)(>= hi 2)){(atomic(pair-pubmote -2))})(if(= hi 1){(esp-now-del-peer bc)(setq bc'(255 255 255 255 255 255))(esp-now-add-peer bc)(esp-now-send bc"42069")(esp-now-del-peer bc)(setq hi 2)})(if(and(= hi 0)(>=(g'af)0)(<=(secs-since ec)5)(>=(g'fx)0)){(ab(g'fx)(list(assoc gt'dn)3))(var gr(bufcreate 32))(bufset-u8 gr 0 69)(bufset-u8 gr 1 e)(bufset-i16 gr 2(floor(* ea 10)))(bufset-i16 gr 4(floor(* bk 10)))(bufset-u8 gr 6 ba)(bufset-u8 gr 7 cr)(bufset-i16 gr 8(floor(* cm 10)))(bufset-i16 gr 10(floor bq))(bufset-i16 gr 12(floor(* bb 10)))(bufset-i16 gr 14(floor(* hy 10)))(bufset-u8 gr 16(floor(*(+ fs 0.5)100)))(bufset-f32 gr 17 cp'little-endian)(bufset-u8 gr 21(floor(* gj 2)))(bufset-u8 gr 22(floor(* hz 2)))(bufset-u32 gr 23 fe)(bufset-u8 gr 27(floor(* k 2)))(bufset-i32 gr 28(g'et))(esp-now-send bc gr)(free gr)})(setq cn(secs-since 0))(setq fk(+ fk 0.05))(var be(- fk(secs-since 0)))(if(> be 0){(aa be)(setq fk(secs-since 0))})})})(defun ek()(loopwhile t(recv((event-esp-now-rx(? gp)(? cl)(? gr)(? ce))(fi gp cl gr ce))((event-data-rx .(? gr))(fj gr))(_ nil))))(defun hq(dh value){(let((ax(assoc gl dh)))(if ax(loopforeach ay gl {(if(eq(car ay)dh)(setcdr ay(list(car(cdr ay))(car(cdr(cdr ay)))(car(cdr(cdr(cdr ay))))value)))})(setq gl(cons(cons dh(list 0'hs 0 value))gl))))})(defun fi(gp cl gr ce){(if(= hi 2){(setq bc gp)(esp-now-add-peer bc)(esp-now-send bc(g'et))(esp-now-del-peer bc)(setq hi 3)}{(if(and(=(buflen gr)15)(=(bufget-i32 gr 11)(g'et))){(setq ec(systime))(var jsx(bufget-f32 gr 0'little-endian))(var jsy(bufget-f32 gr 4'little-endian))(var bt-c(bufget-u8 gr 8))(var bt-z(bufget-u8 gr 9))(var is-rev(bufget-u8 gr 10))(gw(g'fx)(cy(to-str(list jsy jsx bt-c bt-z is-rev))"(""(set-remote-state "))})})})(defun aa(x)(yield(* x 1000000)))@const-end(defun hb(fp hv dq){(var bm(g'bm))(var dt(secs-since dk))(if(>(length da)0){(if(=(g'ad)0)(co))})(var fm(g'gz))(setq dx(g'ha))(var bm(g'bm))(if(and(>= fp bm)(<= dt 1)){(setq fm(g'ds))(setq dx(g'aq))})(if(and(<=(secs-since 0)bm)(= hv 0))(setq fm(g's)))(if(and(>(length fh)0)(>(length bn)0)){(cond((= ba 15){(hl)(de da)(de fh)})((and(> fp(g'ef))(< dt 1)){(hl)})((and(or(= fm 1)(= dq 1))(< dt 1)){(cq fh)(cq bn)})((or(= fm 0)(and(> dt 1)(>(secs-since 0)bm))){(gm(if(>= hv 0)fh bn)0xFFFFFFFFu32)(gm(if(< hv 0)fh bn)0x00FF0000u32)})((= fm 2){(gm(if(>= hv 0)fh bn)0x0000FFFFu32)(gm(if(< hv 0)fh bn)0x00FF00FFu32)})((= fm 3){(gm(if(>= hv 0)fh bn)0x000000FFu32)(gm(if(< hv 0)fh bn)0x0000FF00u32)})((= fm 4){(gm(if(>= hv 0)fh bn)0x00FFFF00u32)(gm(if(< hv 0)fh bn)0x0000FF00u32)})((= fm 5){(bh)})((= fm 6){(fo)})((= fm 7){(fz 0)})((= fm 8){(fz 1)})((= fm 9){(v)})((= fm 10){(by)}))(if(and(=(g'dp)1)(<= hy(g'hg)))(dy))})})(defun db(){(var gu 5)(var fk(secs-since 0))(var aw 0)(var cn 0)(var bv(bufcreate 64))(loopwhile-thd 100 t {(setq aw(secs-since 0))(if(>=(g'hc)0){(var dr(uart-read bv(buflen bv)nil nil 0.5))(if(> dr 5){(var dc 0)(var cu 0)(var bw 0)(var br 0)(var bf 0)(var i 0)(loopwhile(and(< i(- dr 5))(not(and(= dc 1)(= cu 1)(= bw 1)(= br 1)(= bf 1)))){(if(and(<(+ i 2)dr)(=(bufget-u8 bv i)0xFF)(=(bufget-u8 bv(+ i 1))0x55)(=(bufget-u8 bv(+ i 2))0xAA)){(setq er(systime))(if(<(+ i 3)dr){(var dv(bufget-u8 bv(+ i 3)))(var hr(+ i 4))(loopwhile(and(< hr(- dr 2))(not(and(<(+ hr 2)dr)(=(bufget-u8 bv hr)0xFF)(=(bufget-u8 bv(+ hr 1))0x55)(=(bufget-u8 bv(+ hr 2))0xAA)))){(setq hr(+ hr 1))})(var ey(- hr i))(if(>= ey 6){(var hu(bufcreate ey))(bufcpy hu 0 bv i ey)(if(>=(buflen hu)2){(var crc(bufget-u16 bv(- hr 2)))(var fr 0)(looprange ao 0(-(buflen hu)2){(setq fr(+ fr(bufget-u8 hu ao)))})(if(eq crc fr){(cond((and(= dv 2)(= cu 0)){(setq cu 1)(var fg 0)(var hh 0)(looprange ao 4(-(buflen hu)4){(if(eq(mod ao 2)0){(if(and(= fg 0)(=(g'w)1)){(set-bms-val'bms-soc(/(hf(bufget-i16 hu ao))100.0))})(var at(/(bufget-i16 hu ao)1000.0))(set-bms-val'bms-v-cell fg at)(setq fg(+ fg 1))(setq hh(+ hh at))})})(set-bms-val'bms-v-tot hh)})((and(= dv 3)(= bw 0)){(setq bw 1)(if(=(g'w)0){(set-bms-val'bms-soc(/(bufget-u8 hu 4)100.0))})})((and(= dv 5)(= bf 0)){(setq bf 1)(var cj 0.055)(var id(*(bufget-i16 hu 4)cj))(set-bms-val'bms-i-in-ic id)})((and(= dv 0)(= dc 0)){(setq dc 1)})((and(= dv 4)(= br 0)){(setq br 1)(set-bms-val'bms-temp-ic(bufget-i8 hu(-(buflen hu)3)))(looprange ao 4(-(buflen hu)3){(set-bms-val'bms-temps-adc(- ao 4)(bufget-i8 hu ao))})}))(setq i hr)})})(free hu)})(setq i hr)} {(setq i(+ i 1))})} {(setq i(+ i 1))})})(send-bms-can)}{ })(if(>=(g'n)0){(if(and(>(secs-since er)gu)(<(secs-since dk)1)(or(= ba 0)(> ba 5))){(gpio-write(g'n)1)(aa 0.1)(gpio-write(g'n)0)})})})(setq cn(secs-since 0))(setq fk(+ fk 0.05))(var be(- fk(secs-since 0)))(if(> be 0){(aa be)(setq fk(secs-since 0))})})})(dz)