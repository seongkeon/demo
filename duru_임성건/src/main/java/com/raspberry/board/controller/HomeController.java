package com.raspberry.board.controller;

import com.oracle.wls.shaded.org.apache.regexp.RE;
import com.raspberry.board.dto.MemberDto;
import com.raspberry.board.dto.ProMemberDto;
import com.raspberry.board.dto.ResMemberDto;
import com.raspberry.board.dto.TaxMemberDto;
import com.raspberry.board.service.MemberService;
import com.raspberry.board.service.ProMemberService;
import com.raspberry.board.service.ResMemberService;
import com.raspberry.board.service.TaxMemberService;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.security.Principal;

@Controller
@Slf4j
public class HomeController {
    @Autowired
    private MemberService mServ;
    @Autowired
    private ResMemberService rServ;
    @Autowired
    private TaxMemberService tServ;
    @Autowired
    private ProMemberService pServ;

    private ModelAndView mv;

    @GetMapping("/")
    public String home(){
        log.info("home()");
        return "home";
    }
    @GetMapping("homeAfter")
    public String homeAfter(){
        log.info("homeAfter()");
        return "homeAfter";
    }

    @GetMapping("homeBus")
    public String homeBus(){
        log.info("homeBus()");
        return "homeBus";
    }

    @GetMapping("map")
    public String map(){
        log.info("map");
        return "map";
    }

    @GetMapping("introduce")
    public String introduce(){
        log.info("introduce()");
        return "introduce";
    }

    //회원가입 유형 선택
    @GetMapping("joinSelect")
    public String joinSelect(){
        log.info("joinSelect()");
        return "joinSelect";
    }

    //로그인 유형 선택
    @GetMapping("loginSelect")
    public String loginSelect(){
        log.info("loginSelect()");
        return "loginSelect";
    }

    //사용자 회원가입 페이지 이동
    @GetMapping("userJoin")
    public String userJoin(){
        log.info("userJoin()");
        return "userJoin";
    }
    //음식점 사업자 회원가입 페이지 이동
    @GetMapping("resJoin")
    public String resJoin(){
        log.info("resJoin()");
        return "resJoin";
    }
    //음식점 사업자 회원가입 페이지 이동
    @GetMapping("taxJoin")
    public String taxJoin(){
        log.info("taxJoin()");
        return "taxJoin";
    }
    //프로그램 사업자 회원가입 페이지 이동
    @GetMapping("proJoin")
    public String proJoin(){
        log.info("proJoin()");
        return "proJoin";
    }

    ///////////사용자////////////
    //REST 방식(Ajax)으로 전송할 경우의 메소드
    @GetMapping("mIdCheck")
    @ResponseBody           //REST 방식일 때 꼭 넣을 것.
    public String mIdCheck(String uid){
        log.info("mIdCheck()");
        String res = mServ.mIdCheck(uid);

        return res;
    }

    @PostMapping ("userJoinProc")
    public String userJoinProc(MemberDto member, RedirectAttributes rttr){
        log.info("userJoinProc()");
        String view = mServ.userJoin(member, rttr);

        return view;
    }

    @GetMapping("userLogin")
    public String userLogin(){
        log.info("userLogin()");
        return "userLogin";
    }

    @PostMapping("mLoginProc")
    public String mLoginProc(MemberDto member,
                             HttpSession session,
                             RedirectAttributes rttr){
        log.info("mLoginProc()");
        String view = mServ.mLoginProc(member,session,rttr);
        return view;
    }

    ///////////음식점////////////
    //REST 방식(Ajax)으로 전송할 경우의 메소드
    @GetMapping("rIdCheck")
    @ResponseBody           //REST 방식일 때 꼭 넣을 것.
    public String rIdCheck(String pid){
        log.info("rIdCheck()");
        String res = rServ.rIdCheck(pid);

        return res;
    }

    @PostMapping ("resJoinProc")
    public String resJoinProc(ResMemberDto rmember, RedirectAttributes rttr){
        log.info("resJoinProc()");
        String view = rServ.resJoin(rmember, rttr);

        return view;
    }

    @GetMapping("resLogin")
    public String resLogin(){
        log.info("resLogin()");
        return "resLogin";
    }

    @PostMapping("rLoginProc")
    public String rLoginProc(ResMemberDto rmember,
                             HttpSession session,
                             RedirectAttributes rttr){
        log.info("rLoginProc()");
        String view = rServ.rLoginProc(rmember,session,rttr);
        return view;
    }


    ///////////택시////////////
    @GetMapping("tIdCheck")
    @ResponseBody           //REST 방식일 때 꼭 넣을 것.
    public String tIdCheck(String tid){
        log.info("tIdCheck()");
        String res = tServ.tIdCheck(tid);

        return res;
    }

    @PostMapping ("taxJoinProc")
    public String taxJoinProc(TaxMemberDto tmember, RedirectAttributes rttr){
        log.info("taxJoinProc()");
        String view = tServ.taxJoin(tmember, rttr);

        return view;
    }

    @GetMapping("taxLogin")
    public String taxLogin(){
        log.info("taxLogin()");
        return "taxLogin";
    }

    @PostMapping("tLoginProc")
    public String tLoginProc(TaxMemberDto tmember,
                              HttpSession session,
                              RedirectAttributes rttr){
        log.info("tLoginProc()");
        String view = tServ.tLoginProc(tmember,session, rttr);

        return view;
    }

    ///////////프로그램////////////
    @GetMapping("proLogin")
    public String proLogin(){
        log.info("proLogin()");
        return "proLogin";
    }

    @PostMapping("pLoginProc")
    public String pLoginProc(ProMemberDto pmember,
                             HttpSession session,
                             RedirectAttributes rttr){
        log.info("pLoginProc()");
        String view = pServ.pLoginProc(pmember,session,rttr);
        return view;
    }
    //REST 방식(Ajax)으로 전송할 경우의 메소드
    @GetMapping("pIdCheck")
    @ResponseBody           //REST 방식일 때 꼭 넣을 것.
    public String pIdCheck(String pid){
        log.info("pIdCheck()");
        String res = pServ.pIdCheck(pid);

        return res;
    }

    @PostMapping ("proJoinProc")
    public String proJoinProc(ProMemberDto pmember, RedirectAttributes rttr){
        log.info("proJoinProc()");
        String view = pServ.proJoin(pmember, rttr);

        return view;
    }

    @GetMapping("logout")
    public String logout(HttpSession session){
        log.info("logout()");
        String view = mServ.logout(session);
        return view;
    }

    @GetMapping("userInfo")
    public ModelAndView userInfo(String uid){
        log.info("userInfo()");
        mv = mServ.getMember(uid);

        return mv;
    }


    @GetMapping("findId")
    public String findId(){
        log.info("findId()");
        return "findId";
    }

    @PostMapping("mFindId")
    public ModelAndView mFindId(String uname, String uphone_num){
        log.info("mFindId()");
        mv = mServ.mFindId3(uname, uphone_num);
        return mv;
    }

    @GetMapping("findPwd")
    public String findPwd(){
        log.info("findPwd()");
        return "findPwd";
    }

    @GetMapping("resetPwd")
    public String resetPwd(String uid, String uname, String uphone_num, Model model) {
        if (mServ.resetPwd3(uid, uname, uphone_num)) {
            model.addAttribute("uid", uid);
            return "resetPwd";
        } else {
            return "redirect:findPwd";
        }
    }

    @PostMapping("mRePw")
    public String mRePw(String upwd, String uid, RedirectAttributes rttr){
        log.info("mRePw");
        String view = mServ.mRePw(upwd, uid, rttr);

        return view;
    }

    @GetMapping("resFindId")
    public String resFindId(){
        log.info("resFindId()");
        return "resFindId";
    }

    @PostMapping("rFindId")
    public ModelAndView rFindId(String rname, String rphone_num){
        log.info("rFindId()");
        mv = rServ.rFindId3(rname, rphone_num);
        return mv;
    }

    @GetMapping("taxFindId")
    public String taxFindId(){
        log.info("taxFindId()");
        return "taxFindId";
    }

    @PostMapping("tFindId")
    public ModelAndView tFindId(String tname, String tphone_num){
        log.info("tFindId()");
        mv = tServ.tFindId3(tname, tphone_num);
        return mv;
    }
    @GetMapping("proFindId")
    public String proFindId(){
        log.info("proFindId()");
        return "proFindId";
    }

    @PostMapping("pFindId")
    public ModelAndView pFindId(String pcenter_name, String pcenter_num){
        log.info("pFindId()");
        mv = pServ.pFindId3(pcenter_name, pcenter_num);
        return mv;
    }

    @GetMapping("resFindPwd")
    public String resFindPwd(){
        log.info("resFindPwd()");
        return "resFindPwd";
    }

    @GetMapping("resResetPwd")
    public String resResetPwd(String rid, String rname, String rphone_num, Model model) {
        if (rServ.resResetPwd3(rid, rname, rphone_num)) {
            model.addAttribute("rid", rid);
            return "resResetPwd";
        } else {
            return "redirect:resFindPwd";
        }
    }

    @PostMapping("resRePw")
    public String resRePw(String rpwd, String rid, RedirectAttributes rttr){
        log.info("resRePw");
        String view = rServ.resRePw(rpwd, rid, rttr);

        return view;
    }

    @GetMapping("taxFindPwd")
    public String taxFindPwd(){
        log.info("taxFindPwd()");
        return "taxFindPwd";
    }

    @GetMapping("taxResetPwd")
    public String taxResetPwd(String tid, String tname, String tphone_num, Model model) {
        if (tServ.taxResetPwd3(tid, tname, tphone_num)) {
            model.addAttribute("tid", tid);
            return "taxResetPwd";
        } else {
            return "redirect:taxFindPwd";
        }
    }

    @PostMapping("taxRePw")
    public String taxRePw(String tpwd, String tid, RedirectAttributes rttr){
        log.info("taxRePw");
        String view = tServ.taxRePw(tpwd, tid, rttr);

        return view;
    }

    @GetMapping("proFindPwd")
    public String proFindPwd(){
        log.info("proFindPwd()");
        return "proFindPwd";
    }

    @GetMapping("proResetPwd")
    public String proResetPwd(String pid, String pcenter_name, String pcenter_num, Model model) {
        if (pServ.proResetPwd3(pid, pcenter_name, pcenter_num)) {
            model.addAttribute("pid", pid);
            return "proResetPwd";
        } else {
            return "redirect:proFindPwd";
        }
    }

    @PostMapping("proRePw")
    public String proRePw(String ppwd, String pid, RedirectAttributes rttr){
        log.info("proRePw");
        String view = pServ.proRePw(ppwd, pid, rttr);

        return view;
    }
    ////////////////////////////////사용자 마이페이지
        @GetMapping ("userUpdate")
    public ModelAndView userUpdate(String uid){
        log.info("userUpdate()");
        mv = mServ.userUpdate(uid);
        return mv;
    }

    @PostMapping("mInfoFix")
    public String mInfoFix(MemberDto member, HttpSession session,
                                 RedirectAttributes rttr){
        log.info("mInfoFix()");
        String view = mServ.mInfoUpdate(member, session, rttr);
        return view;
    }

    @GetMapping("mWithd")
    public String mWithd(String uid, RedirectAttributes rttr){
        log.info("mWithd()");
        String view = mServ.mWithdProc(uid, rttr);
        return view;
    }
    //식당 마이페이지

    @GetMapping("resInfo")
    public String resInfo(){
        log.info("resInfo()");
        return "resInfo";
    }
    @GetMapping ("resInfoUpdate")
    public ModelAndView resInfoUpdate(String rid){
        log.info("resInfoUpdate()");
        mv = rServ.resInfoUpdate(rid);
        return mv;
    }

    @PostMapping("rInfoFix")
    public String rInfoFix(ResMemberDto rmember, HttpSession session,
                           RedirectAttributes rttr){
        log.info("rInfoFix()");
        String view = rServ.rInfoUpdate(rmember, session, rttr);
        return view;
    }

    @GetMapping("rWithd")
    public String rWithd(String rid){
        log.info("rWithd()");
        String view = rServ.rWithdProc(rid);
        return view;
    }

    //택시 마이페이지

    @GetMapping("taxInfo")
    public String taxInfo(){
        log.info("taxInfo()");
        return "taxInfo";
    }

    @GetMapping ("taxInfoUpdate")
    public ModelAndView taxInfoUpdate(String tid){
        log.info("paxInfoUpdate()");
        mv = tServ.taxInfoUpdate(tid);
        return mv;
    }

    @PostMapping("tInfoFix")
    public String tInfoFix(TaxMemberDto tmember, HttpSession session,
                           RedirectAttributes rttr){
        log.info("tInfoFix()");
        String view = tServ.tInfoUpdate(tmember, session, rttr);
        return view;
    }

    @GetMapping("tWithd")
    public String tWithd(String tid){
        log.info("tWithd()");
        String view = tServ.tWithdProc(tid);
        return view;
    }

    //프로그램 마이페이지
    @GetMapping("proInfo")
    public String proInfo(){
        log.info("proInfo()");
        return "proInfo";
    }

    @GetMapping ("proInfoUpdate")
    public ModelAndView proInfoUpdate(String pid){
        log.info("proInfoUpdate()");
        mv = pServ.proInfoUpdate(pid);
        return mv;
    }

    @PostMapping("pInfoFix")
    public String pInfoFix(ProMemberDto pmember, HttpSession session,
                           RedirectAttributes rttr){
        log.info("pInfoFix()");
        String view = pServ.pInfoUpdate(pmember, session, rttr);
        return view;
    }

    @GetMapping("pWithd")
    public String pWithd(String pid){
        log.info("pWithd()");
        String view = pServ.pWithdProc(pid);
        return view;
    }

}//class end
