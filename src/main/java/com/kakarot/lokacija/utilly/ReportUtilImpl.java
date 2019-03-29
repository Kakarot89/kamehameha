package com.kakarot.lokacija.utilly;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.data.general.DefaultPieDataset;
import org.springframework.stereotype.Component;

@Component
public class ReportUtilImpl implements ReportUtil {

	@Override
	public void generatedPieChart(String path, List<Object[]> data) {
		
		DefaultPieDataset dataset= new DefaultPieDataset();
		
		for (Object[] objects : data){
			dataset.setValue(objects[0].toString(), new Double(objects[1].toString()));
		                         // KEY                                  // VALUE   
		}
		
		JFreeChart chart = ChartFactory.createPieChart3D("Izvestaj o tipovima Lokacija", dataset);
		
		try {
			//generisemo jpeg fajl i jpeg file name 
			ChartUtilities.saveChartAsJPEG(new File(path+"/pieChart.jpeg"), chart, 350, 350);
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

}
