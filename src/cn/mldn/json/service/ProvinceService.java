package cn.mldn.json.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.mldn.json.vo.City;
import cn.mldn.json.vo.Province;

public class ProvinceService { 
	/**
	 * 根据省份编号查询出此省份对应的信息以及对应的所有的城市信息
	 * @param pid 省份编号
	 * @return 返回有省份和城市数据
	 */
	public Map<String,Object> get(long pid) {
		Province pro = new Province() ;
		pro.setPid(pid);
		pro.setTitle("河北省");
		List<City> allCities = new ArrayList<City>() ;
		long cids [] = new long [] {2001,2002,2003} ;
		String titles [] = new String [] {"石家庄","邯郸","沧州"} ;
		for (int x = 0 ; x < cids.length ; x ++) {
			City city = new City() ;
			city.setCid(cids[x]);
			city.setTitle(titles[x]);
			allCities.add(city) ;
		}
		Map<String,Object> map = new HashMap<String,Object>() ;
		map.put("province", pro) ;	// 保存所有的省份信息
		map.put("cities", allCities) ;
		return map ;
	}
}
