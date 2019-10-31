package com.cj.responsi144

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.ListView
import android.widget.Toast
import kotlinx.android.synthetic.main.activity_login.*

class Home : AppCompatActivity() {
    lateinit var listView : ListView
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_login)

        listView = findViewById(R.id.listView)
        var list = mutableListOf<model>()

        list.add(model("aki", "aki terbaik untuk anda", R.drawable.aki))
        list.add(model("ban", "ban terbaik untuk anda", R.drawable.ban))
        list.add(model("handle", "handle terbaik untuk anda", R.drawable.handle))
        list.add(model("headlamp", "headlamp terbaik untuk anda", R.drawable.headlamp))
        list.add(model("jok", "jok terbaik untuk anda", R.drawable.jok))
        list.add(model("mantel", "mantel terbaik untuk anda", R.drawable.mantel))
        list.add(model("oli", "oli terbaik untuk anda", R.drawable.oli))
        list.add(model("shockbeker", "shockbeker terbaik untuk anda", R.drawable.shockbeker))
        list.add(model("velg", "velg terbaik untuk anda", R.drawable.velg))
        list.add(model("wiper", "wiper terbaik untuk anda", R.drawable.wiper))


        listView.adapter = Adapter(this,R.layout.itemm,list)
        listView.setOnItemClickListener{parent, view, position, id ->

            if (position==0){
                Toast.makeText(this@Home, "aki adalah aki",   Toast.LENGTH_LONG).show() }
            if (position==1){
                Toast.makeText(this@Home, "ban adalah ban",   Toast.LENGTH_LONG).show() }
            if (position==2){
                Toast.makeText(this@Home, "henele adalah hendle", Toast.LENGTH_LONG).show() }
            if (position==3){
                Toast.makeText(this@Home, "handlamp adalah handlap",  Toast.LENGTH_LONG).show() }
            if (position==4){
                Toast.makeText(this@Home, "jok adalah jok",  Toast.LENGTH_LONG).show() }
            if (position==5){
                Toast.makeText(this@Home, "mantel adalah mantel",  Toast.LENGTH_LONG).show() }
            if (position==6){
                Toast.makeText(this@Home, "oli adalah oli",  Toast.LENGTH_LONG).show() }
            if (position==7){
                Toast.makeText(this@Home, "shockbeker adalahs hockbeker",  Toast.LENGTH_LONG).show() }
            if (position==8){
                Toast.makeText(this@Home, "veleg adalah veleg",  Toast.LENGTH_LONG).show() }
            if (position==9){
                Toast.makeText(this@Home, "wiper adalah wisper",  Toast.LENGTH_LONG).show() }
        }
        btn_akun.setOnClickListener(){
            intent = Intent (this,Account::class.java)
            startActivity(intent)}
    }
}
