package com.abdulmateen.spacetutorial

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform