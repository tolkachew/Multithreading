package com.company.basic;

public class RunnableDemo {
    public static void main(String[] args) {
        System.out.println("Thread : " + Thread.currentThread().getName());

        System.out.println("Creating Runnable...");
        Runnable runnable = new RunnableBasic();
        System.out.println("Creating Thread...");
        Thread thread = new Thread(runnable);

        System.out.println("Starting Thread...");
        thread.start();
        //Finish the child thread

        try {
            thread.join(); //Дождаться завершение другого потока
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println("Finish:" + Thread.currentThread().getName());
    }
}

class RunnableBasic implements Runnable {

    @Override
    public void run() {
        for (int i=0; i<3; i++) {
            System.out.println("Thread : " + Thread.currentThread().getName() + " is running...");
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        System.out.println("Finish:" + Thread.currentThread().getName());
    }
}