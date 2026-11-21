import { createRouter, createWebHashHistory } from 'vue-router'

export const router = createRouter({
  history: createWebHashHistory(),
  routes: [
    { path: '/', name: 'home', component: () => import('./views/HomeView.vue') },
    { path: '/changes', name: 'changes', component: () => import('./views/ChangesView.vue') },
    { path: '/r/:robot', name: 'robot', component: () => import('./views/RobotView.vue') },
    { path: '/p/:robot/:date/:program', name: 'program', component: () => import('./views/ProgramView.vue') },
    { path: '/diff/:robot', name: 'diff', component: () => import('./views/DiffView.vue') },
    { path: '/compare', name: 'compare', component: () => import('./views/CompareView.vue') },
    { path: '/:pathMatch(.*)*', redirect: '/' },
  ],
  scrollBehavior(to, _from, saved) {
    if (saved)
      return saved
    if (to.hash)
      return { el: to.hash, top: 90, behavior: 'smooth' }
    return { top: 0 }
  },
})
