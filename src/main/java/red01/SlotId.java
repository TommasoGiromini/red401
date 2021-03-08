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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (id ^ (id >>> 32));
		result = prime * result + sid;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		SlotId other = (SlotId) obj;
		if (id != other.id)
			return false;
		if (sid != other.sid)
			return false;
		return true;
	}

}
