package com.kgc.tcmp077.service.impl;

import com.kgc.tcmp077.mapper.AssetsMapper;
import com.kgc.tcmp077.pojo.Assets;
import com.kgc.tcmp077.pojo.AssetsExample;
import com.kgc.tcmp077.service.AssetService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-01 18:03
 */
@Service("assetService")
public class AssetServiceImpl implements AssetService {
    @Resource
    AssetsMapper assetsMapper;
    @Override
    public List<Assets> assetList(String assetId,String assetType) {
        AssetsExample assetsExample=new AssetsExample();
        AssetsExample.Criteria criteria = assetsExample.createCriteria();
        if(assetId!=null&&assetId.isEmpty()==false){
            criteria.andAssetidLike("%"+assetId+"%");
        }else if(assetType!=null&&assetType.equals("请选择类型")==false){
            criteria.andAssettypeEqualTo(assetType);
        }else{
            return assetsMapper.selectByExample(null);
        }
        return assetsMapper.selectByExample(assetsExample);
    }

    @Override
    public void addAsset(Assets assets) {
        assetsMapper.insertSelective(assets);
    }
}
