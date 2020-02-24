class BillsController < ApplicationController
  def index
    @bills = Bill.all
  end

  def show
    @bill = Bill.find(params[:id])
    @songs = @bill.songs
  end

  def new_song
    @bill = Bill.find(params[:id])
    @songs = Song.all.where(bill_id: nil)
  end

  def add_song
    @bill = Bill.find(params[:id])
    @bill.songs << Song.find(params[song_id])
    redirect_to bill_path(@bill)
  end

  def remove_song 
    @bill = Bill.find(params[:id])
    Bill.find(params[:bill_id]).update(bill_id: nil)
    redirect_to bill_path(@bill)
  end
end
