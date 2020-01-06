package com.czw.day.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.czw.day.domian.Good;
import com.czw.utils.NumberUtil;
import com.czw.utils.StreamUtil;
import com.czw.utils.StringUtil;

public class GoodServiceimplTest {

	@Test
	public void test() {
		ArrayList<Good> list = new ArrayList<Good>();
		List<String> readLine = StreamUtil.readLine(this.getClass().getResourceAsStream("/dat.txt"));
		for (int j = 0; j < list.size(); j++) {
			Good good = new Good();
			String[] split = readLine.get(j).split("\\||");
			good.setId(Integer.parseInt(split[0]));
			if (StringUtil.hasText(split[1])) {
				good.setMs(split[3]);
			}
			
			if (StringUtil.hasText(split[3])) {
				String name=split[2].substring(j);
			}
			if (split.length>3) {
				
			}
		}
	}

}
