package com.example.DMS.Models;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
@Entity
public class Trainer {

	@Id
	private int trainerId;
	private String trainerName;
	private String trainerAddress;
	
	public int getTrainerId() {
		return trainerId;
	}
	public void setTrainerId(int trainerId) {
		this.trainerId = trainerId;
	}
	public String getTrainerName() {
		return trainerName;
	}
	public void setTrainerName(String trainerName) {
		this.trainerName = trainerName;
	}
	public String getTrainerAdress() {
		return trainerAddress;
	}
	public void setTrainerAddress(String trainerAdress) {
		this.trainerAddress = trainerAdress;
	}
	
	@Override
	public String toString() {
		return "Trainer [trainerId=" + trainerId + ", trainerName=" + trainerName + ", trainerAdress=" + trainerAddress
				+ "]";
	}
	
}
