package com.kgc.tcmp077.controller;

import com.kgc.tcmp077.pojo.Assets;
import com.kgc.tcmp077.service.AssetService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-01 18:15
 */
@Controller
public class AssetController {
    @Resource
    AssetService assetService;
    @RequestMapping("/")
    public String index(){
        return "redirect:/index";
    }
    @RequestMapping("/add")
    public String toadd(){
        return "add";
    }
    @RequestMapping("/doadd")
    public String doadd(Assets assets){
        assetService.addAsset(assets);
        return "redirect:/index";
    }
    @RequestMapping("/index")
    public String doindex(String assetId, String assetType, Model model){
        List<Assets> assets = assetService.assetList(assetId, assetType);
        model.addAttribute("assets",assets);
        return "index";

    }

}
