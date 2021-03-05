package red01;

import java.io.Serializable;

@SuppressWarnings("serial")
public class SlotId implements Serializable {

	private long id;

	private int sid;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

}
