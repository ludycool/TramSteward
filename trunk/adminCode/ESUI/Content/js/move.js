
//��һ�����Զ�λ�Ķ����װ�ɿ��϶�����
function MoveControl(c){
	/* ��������������ԣ������дһ����ȡ�¼�����Ĺ������� */
	c.getEvent=function(e){ 
		if(!e){ 
			e=event; 
			e.pageX=event.x; 
			e.pageY=event.y;
		} 
		return e; 
	}
	/* ������ڸö����ϰ��£���¼����ʱ����λ�ã������޸ļ���������ʼ���� */
	c.onmousedown=function(e){ 
		e=this.getEvent(e); 
		this.IX=e.pageX; 
		this.IY=e.pageY; 
		this.moveKey=true; 
	}
	/* ������ڶ������ƶ�ʱ��ͬʱ�ƶ��ö��� */
	c.onmousemove=function(e){ 
		if(!this.moveKey) return; 
		
		e=this.getEvent(e); 
		this.style.top=parseInt(this.style.top?this.style.top:0)+(e.pageY-this.IY)+"px";
		this.style.left=parseInt(this.style.left?this.style.left:0)+(e.pageX-this.IX)+"px"; 
		this.IX=e.pageX; 
		this.IY=e.pageY; 
	}
	/* ������ڶ������ɿ�ʱ��ֹͣ�ƶ��ö��� */
	c.onmouseup=function(e){ 
		this.moveKey=false; 
	}
}
