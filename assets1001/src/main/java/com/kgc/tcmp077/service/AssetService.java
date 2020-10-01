package com.kgc.tcmp077.service;

import com.kgc.tcmp077.pojo.Assets;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-01 18:02
 */
public interface AssetService {
    List<Assets> assetList(String assetId,String assetType);
    void addAsset(Assets assets);
}
