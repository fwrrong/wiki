package com.weijun.wiki.service;

import com.weijun.wiki.domain.Ebook;
import com.weijun.wiki.domain.EbookExample;
import com.weijun.wiki.domain.EbookExample.Criteria;
import com.weijun.wiki.mapper.EbookMapper;
import com.weijun.wiki.req.EbookReq;
import com.weijun.wiki.resp.EbookResp;
import com.weijun.wiki.util.CopyUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class EbookService {

    @Resource
    private EbookMapper ebookMapper;

    public List<EbookResp> list(EbookReq req) {
        EbookExample ebookExample = new EbookExample();
        Criteria criteria = ebookExample.createCriteria();
        criteria.andNameLike("%" + req.getName() + "%");
        List<Ebook> ebooksList = ebookMapper.selectByExample(ebookExample);

//        List<EbookResp> respList = new ArrayList<>();
//        for (Ebook ebook : ebooksList) {
////            EbookResp ebookResp = new EbookResp();
////            BeanUtils.copyProperties(ebook, ebookResp);
//            // 单个复制
//            EbookResp ebookResp = CopyUtil.copy(ebook, EbookResp.class);
//
//            respList.add(ebookResp);
//        }
        // list copy
        List<EbookResp> respList = CopyUtil.copyList(ebooksList, EbookResp.class);
        return respList;
    }

}
