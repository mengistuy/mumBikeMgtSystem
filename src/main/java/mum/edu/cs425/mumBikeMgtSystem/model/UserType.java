package mum.edu.cs425.mumBikeMgtSystem.model;

public enum UserType {
	Admin("Admin"), Student("Student"), Staff("Staff");

	private String name;

	UserType(String name) {
		this.name = name;
	}

	public String getName() {
		return this.name;
	}
}
