package model;

import java.io.Serializable;

public class Nums implements Serializable{
		private int[] data;
		private int element;
		private int max;
		private int min;
		private int total;
		public Nums() {}
		public Nums(int[] data,int element,int max,int min,int total) {
			this.data=data;
			this.element=element;
			this.max=max;
			this.min=min;
			this.total=total;
		}
		public int[] getData() {
			return data;
		}
		public void setData(int[] data) {
			this.data = data;
		}
		public int getElement() {
			return element;
		}
		public void setElement(int element) {
			this.element = element;
		}
		public int getMax() {
			return max;
		}
		public void setMax(int max) {
			this.max = max;
		}
		public int getMin() {
			return min;
		}
		public void setMin(int min) {
			this.min = min;
		}
		public int getTotal() {
			return total;
		}
		public void setTotal(int total) {
			this.total = total;
		}
}
