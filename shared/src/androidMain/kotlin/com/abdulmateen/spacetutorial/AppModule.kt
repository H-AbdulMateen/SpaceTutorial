package com.abdulmateen.spacetutorial

import com.abdulmateen.spacetutorial.cache.AndroidDatabaseDriverFactory
import com.abdulmateen.spacetutorial.network.SpaceXApi
import com.jetbrains.spacetutorial.SpaceXSDK
import org.koin.android.ext.koin.androidContext
import org.koin.androidx.viewmodel.dsl.viewModel
import org.koin.dsl.module


val appModule = module {
    single<SpaceXApi> { SpaceXApi() }
    single<SpaceXSDK> {
        SpaceXSDK(
            databaseDriverFactory = AndroidDatabaseDriverFactory(
                androidContext()
            ), api = get()
        )
    }
    viewModel { RocketLaunchViewModel(sdk = get()) }
}